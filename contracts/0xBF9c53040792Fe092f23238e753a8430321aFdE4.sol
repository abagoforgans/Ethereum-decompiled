contract main {




// =====================  Runtime code  =====================


array of uint256 stor0;

function _fallback() payable {
    revert
}

function message() {
    mem[128 len 190] = 0xd0b5d189d19120d0bed0b4d0bdd0b020d0bfd180d0bed0b2d0b5d180d0bad0b0212d3139303231312d313432352e377a2035303130313430312061656133666536333265303664626233333366323531333932653431393762652043484b404c6a3433475274325332506a4b30464d6159457153546d2d56686c31714e734d505541432d4131347375302c6c654f47754672504d434a5338687530335836566679656a66796b36696a624a3136314a724436522d496f2c41414d432d2d
    stor0.length = 381
    s = 0
    idx = 128
    while 318 > idx:
        stor0[s] = mem[idx]
        s = s + 1
        idx = idx + 32
        continue 
    idx = 6
    while stor0.length + 31 / 32 > idx:
        stor0[idx] = 0
        idx = idx + 1
        continue 
}



}
