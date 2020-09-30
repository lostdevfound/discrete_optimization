import numpy as np

print('# WARNING: Alb id is missing and replaced by a phantom stundet id!')

ein_id = np.array([13, 10, 11, 12, 19, 19, 10, 16, 19])
oli_id = np.array([13, 10, 11, 13, 14, 19, 15, 17, 10])
ben_id = np.array([13, 10, 11, 12, 19, 17, 18, 16, 10])
alb_id = np.array([12, 10, 10, 11, 11, 15, 15, 18, 12])


bound_constr_ein = 0.5*np.sum(ein_id)
bound_constr_oli = 0.5*np.sum(oli_id)
bound_constr_ben = 0.5*np.sum(ben_id)
bound_constr_alb = 0.5*np.sum(alb_id)

einar_sol_ip = np.array([1, 1, 1, 0, 0, 1, 1, 0, 0])

const_1 = np.dot(einar_sol_ip, ein_id) <= bound_constr_ein
const_2 = np.dot(einar_sol_ip, oli_id) <= bound_constr_oli
const_3 = np.dot(einar_sol_ip, ben_id) <= bound_constr_ben
const_4 = np.dot(einar_sol_ip, alb_id) <= bound_constr_alb

print(const_1, const_2, const_3, const_4)

if (const_1 and const_2) and (const_3 and const_4):
    print('solution is feasible')
else:
    print('solution is not feasible')
