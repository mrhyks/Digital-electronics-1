# H1 Digital-electronics-1 
## 02-gates
[Hykš 02-Logic](https://www.edaplayground.com/x/kUqX)


| **Dec. equivalent** | **B[1:0]** | **A[1:0]** | **B is greater than A** | **B equals A** | **B is less than A** |
| :-: | :-: | :-: | :-: | :-: | :-: |
| 0 | 0 0 | 0 0 | 0 | 1 | 0 |
| 1 | 0 0 | 0 1 | 0 | 0 | 1 |
| 2 | 0 0 | 1 0 | 0 | 0 | 1 |
| 3 | 0 0 | 1 1 | 0 | 0 | 1 |
| 4 | 0 1 | 0 0 | 1 | 0 | 0 |
| 5 | 0 1 | 0 1 | 0 | 1 | 0 |
| 6 | 0 1 | 1 0 | 0 | 0 | 1 |
| 7 | 0 1 | 1 1 | 0 | 0 | 1 |
| 8 | 1 0 | 0 0 | 1 | 0 | 0 |
| 9 | 1 0 | 0 1 | 1 | 0 | 0 |
| 10 | 1 0 | 1 0 | 0 | 1 | 0 |
| 11 | 1 0 | 1 1 | 0 | 0 | 1 |
| 12 | 1 1 | 0 0 | 1 | 0 | 0 |
| 13 | 1 1 | 0 1 | 1 | 0 | 0 |
| 14 | 1 1 | 1 0 | 1 | 0 | 0 |
| 15 | 1 1 | 1 1 | 0 | 1 | 0 |

| **B1,B0\A1,A0** | **00** | **01** | **11** | **10** |
| :-: | :-: | :-: | :-: | :-: |
| 00 | 1 |  |  |  |
| 01 |  | 1 |  |  |
| 11 |  |  | 1 |  |
| 10 |  |  |  | 1 |

| **B1,B0\A1,A0** | **00** | **01** | **11** | **10** |
| :-: | :-: | :-: | :-: | :-: |
| 00 |  |  |  |  |
| 01 | 1 |  |  |  |
| 11 | 1 | 1 |  | 1 |
| 10 | 1 | 1 |  |  |

| **B1,B0\A1,A0** | **00** | **01** | **11** | **10** |
| :-: | :-: | :-: | :-: | :-: |
| 00 | 0 |  |  |  |
| 01 | 0 | 0 |  |  |
| 11 | 0 | 0 | 0 | 0 |
| 10 | 0 | 0 |  | 0 |

![alt text](https://github.com/mrhyks/Digital-electronics-1/blob/main/Labs/02-logic/greater_sop.gif "")
![alt text](https://github.com/mrhyks/Digital-electronics-1/blob/main/Labs/02-logic/less_pos.gif "")
![alt text](https://github.com/mrhyks/Digital-electronics-1/blob/main/Labs/02-logic/design.png "")
![alt text](https://github.com/mrhyks/Digital-electronics-1/blob/main/Labs/02-logic/testbench.png "")
![alt text](https://github.com/mrhyks/Digital-electronics-1/blob/main/Labs/02-logic/console.png "")

