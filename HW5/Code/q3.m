y = [0 1 0];
fprintf("(a)\n");
[t1,y1] = ode45('vdp', [0 0.2], y);
[t2,y2] = ode45('vdp', [0 0.4], y);
[t3,y3] = ode45('vdp', [0 0.6], y);

fprintf("y(0.2) = %f\n", y1(end, 1));
fprintf("y(0.4) = %f\n", y2(end, 1));
fprintf("y(0.6) = %f\n", y3(end, 1));

fprintf("\n(b)\n");
f0 = vdp(0, y)';
f1 = vdp(0.2, y1(end,:))';
f2 = vdp(0.4, y2(end,:))';
f3 = vdp(0.6, y3(end,:))';

y4_predict = y3(end,:) + 0.2/24*(55*f3-59*f2+37*f1-9*f0);
f4 = vdp(0.8, y4_p(end,:))';
y4_correct = y3(end,:) + 0.2/24*(9*f4+19*f3-5*f2+f1);

fprintf("y(0.8) predictor = %f\n", y4_predict(end, 1));
fprintf("y(0.8) corrector = %f\n", y4_correct(end, 1));

y5_predict = y4_p(end,:) + 0.2/24*(55*f4-59*f3+37*f2-9*f1);
f5 = vdp(1.0,y5_p(end,:))';
y5_correct = y4_p(end,:) + 0.2/24*(9*f5+19*f4-5*f3+f2);

fprintf("y(1.0) predictor = %f\n", y5_predict(end, 1));
fprintf("y(1.0) corrector = %f\n", y5_correct(end, 1));
