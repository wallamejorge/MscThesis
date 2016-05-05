
function omegadot = angular_acceleration(inputs, omega, I, L, b, k)
tau = torques(inputs, L, b, k);
omegaddot = inv(I) * (tau - cross(omega, I * omega));
end