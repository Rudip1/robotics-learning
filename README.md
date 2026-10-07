# robotics-learning

**Robotics from first principles: theory, C++ implementations and interactive notebooks.**
Each subject is its own module (a git submodule) with the same shape: a theory text you can learn from, a C++
library that implements it, tests against independent references, and notebooks where you run the code, solve
exercises and break the assumptions on purpose.

| # | module | what you learn | used in |
|---|---|---|---|
| 1 | [learn-motion-planning](https://github.com/Rudip1/learn-motion-planning) | vehicle models, graph search, RRT*, Dubins, local planning, behaviour trees, task planning, Q-learning | [lidar-exploration](https://github.com/Rudip1/lidar-exploration), [CA-MCW](https://github.com/Rudip1/CA-MCW) |
| 2 | [learn-state-estimation](https://github.com/Rudip1/learn-state-estimation) | Bayes, Kalman, EKF and particle filters, data association, EKF-SLAM, ICP and pose graphs | [pekf-slam-icp](https://github.com/Rudip1/pekf-slam-icp) |
| 3 | [learn-manipulator-control](https://github.com/Rudip1/learn-manipulator-control) | forward kinematics, Jacobians, resolved-rate and task-priority control, mobile manipulation | [vehicle-manipulator-task-priority](https://github.com/Rudip1/vehicle-manipulator-task-priority) |
| 4 | [learn-computer-vision](https://github.com/Rudip1/learn-computer-vision) | camera models, calibration, homographies, epipolar geometry, stereo, PnP, visual odometry, event cameras | — |
| 5 | [learn-sensor-fusion](https://github.com/Rudip1/learn-sensor-fusion) | GNSS and coordinate frames, point clouds, ICP, GNSS + LiDAR fusion, dynamic-object filtering | — |

Modules are being rebuilt to the [module standard](MODULE_STANDARD.md); each module's `ROADMAP.md` says which
chapters are finished.

## Get it

```bash
git clone --recurse-submodules https://github.com/Rudip1/robotics-learning.git
cd robotics-learning
make build     # pip install -e . in every module (builds the C++ and the Python bindings)
make test
```

Or open any module's notebooks directly in Colab; the first cell installs the module.

## Suggested order

Motion planning and state estimation first (they share the mobile-robot models), then manipulator control, then
computer vision and sensor fusion. Each module lists its prerequisites in its README.

## Licence

Code: Apache-2.0. Theory texts: CC BY 4.0.
