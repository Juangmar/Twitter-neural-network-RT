function a = acierto(Theta1, Theta2, X, y)    pred = prediccion(Theta1, Theta2, X);    a = mean(double(pred == y));  endfunctionfunction p = prediccion(Theta1, Theta2, X)m = size(X, 1);etiq = size(Theta2, 1);h1 = sigmoide([ones(m, 1) X] * Theta1');h2 = sigmoide([ones(m, 1) h1] * Theta2');[dummy, p] = max(h2, [], 2);% =========================================================================endfunction