a = x(1);
b = x(2);
c = x(3);
func_eqm = @(x) a*x./(1 + b*x + c*x.^2);


xf_values = zeros(size(time));
R_values = zeros(size(time));
n_trays = zeros(size(time));
Q_reboiler = zeros(size(time));
Q_condenser = zeros(size(time)); 

%% Dynamic Simulation
figure;
for i = 1:length(time)
    
    t = time(i);
    xf = xf0 + A * sin(w * t);
    xf_values(i) = xf;
    R = R_min + (R_max - R_min) * (t / t_total); % Linear reflux ratio
    R_values(i) = R;

    % Line Equations
    rectifying_line = @(x) R*x./(R + 1) + xd./(R + 1); % Rectifying line
    feed_line = @(x) xf + (x - xf) * (q / (q - 1)); % Feed line
    eqns = @(x) [rectifying_line(x(1)) - feed_line(x(1)); x(2) - feed_line(x(1))];
    point1 = fsolve(eqns, [xf, xf]); % Intersection of rectifying and feed line
    stripping_line = @(x) (point1(2) - xw) / (point1(1) - xw) * (x - xw) + xw; % Stripping line

    % McCabe-Thiele Step Construction
    nt = 0; 
    X = xd;
    Y = xd;
    max_steps = 100; 

    clf;
    hold on;
    grid on;

    
    x_vals = linspace(0, 1, 100);
    plot(x_vals, func_eqm(x_vals), 'b-', 'LineWidth', 1.5, 'DisplayName', 'Equilibrium Curve');
    hold on
    plot(xf_values(i));
    plot(x_vals, x_vals, 'k--', 'LineWidth', 1.2, 'DisplayName', '45° Line');

    
    fplot(rectifying_line, [point1(1), xd], 'r-', 'LineWidth', 1.5, 'DisplayName', 'Rectifying Line');
    fplot(feed_line, [xf - 0.1, xf + 0.1], 'g-', 'LineWidth', 1.5, 'DisplayName', 'Feed Line');
    fplot(stripping_line, [xw, point1(1)], 'm-', 'LineWidth', 1.5, 'DisplayName', 'Stripping Line');

    % Construct McCabe-Thiele steps
    while X > xw && nt < max_steps
        Xold = X;
        Yold = Y;
        f = @(x) a*x./(1+b*x+c*x.^2) - Y;
        X = fsolve(f,Xold);
        
        if X > point1(1) 
           Y = R*X/(R+1) + xd/(R+1);
        else
            Y = stripping_line(X);
        end
        
        
        line([Xold X], [Yold Yold], 'Color', '#A0F', 'LineWidth', 1.1); 
        line([X X], [Yold Y], 'Color', '#A0F', 'LineWidth', 1.1); 
        
       
        nt = nt + 1;
        
        if abs(X - xw) < 1e-6
            break;
        end
    end
    n_trays(i) = nt; 

    % Energy Calculations
    D = F * (xf - xw) / (xd - xw); 
    W = F - D; 
    Q_reboiler(i) = W * (1 + R) * 0.5; % Reboiler duty 
    Q_condenser(i) = D * (1 + R) * 0.3; % Condenser duty 

    
    title(['McCabe-Thiele Diagram (t = ', num2str(t, '%.2f'), ' hours)'],['McCabe-Thiele Diagram (nt = ', num2str(nt, '%.2f'), ' Trays)']);
    xlabel('Liquid Mole Fraction (x)');
    ylabel('Vapor Mole Fraction (y)');
    

xlim([0.0 1.0])
ylim([0.0 1.0])
legend off
    pause(0.1); 
end