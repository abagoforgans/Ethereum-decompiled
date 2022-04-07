contract main {


// =======================  Init code  ======================


address stor0;
array of address stor1;
uint256 stor2;

function _fallback() {
    stor0 = msg.sender
    stor1.length++
    if not stor1.length <= stor1.length + 1:
        idx = stor1.length + 1
        while stor1.length > idx:
            uint256(stor1[idx]) = 0
            idx = idx + 1
            continue 
    address(stor1[stor1.length]) = stor0
    stor2 = 0
    return code.data[210 len 854]
}



// =====================  Runtime code  =====================


address stor0;
array of address stor1;
uint256 stor2;

function _fallback() {
  stop
}

function setMaster(address arg1) {
    if stor0 == msg.sender:
        stor0 = arg1
}

function collectFee() {
    if stor0 != msg.sender:
    call stor0 with:
       value eth.balance(this.address) - 2 * 10^17 wei
         gas 2300 * is_zero(value) wei
    require ext_call.success
}

function join() payable {
    require msg.value >= 10^17
    if msg.value / 10^17 > 50:
        idx = 0
        while idx < 50:
            stor1.length++
            if not stor1.length <= stor1.length + 1:
                s = stor1.length + sha3(1) + 1
                while sha3(1) + stor1.length > s:
                    stor[s] = 0
                    s = s + 1
                    continue 
            mem[0] = 1
            address(stor1[stor1.length]) = msg.sender
            if bool(stor1.length) != 1:
                idx = idx + 1
                continue 
            stor2++
            require stor2 < stor1.length
            mem[0] = 1
            call address(stor1[stor2]) with:
               value 194 * 10^15 wei
                 gas 0 wei
            require ext_call.success
            idx = idx + 1
            continue 
        emit Joined(50, 2 * stor1.length, msg.sender);
        if msg.value - 5 * 10^18 <= 10^15:
        call msg.sender with:
           value msg.value - 5 * 10^18 wei
             gas 2300 * is_zero(value) wei
    else:
        idx = 0
        while idx < msg.value / 10^17:
            stor1.length++
            if not stor1.length <= stor1.length + 1:
                s = stor1.length + sha3(1) + 1
                while sha3(1) + stor1.length > s:
                    stor[s] = 0
                    s = s + 1
                    continue 
            mem[0] = 1
            address(stor1[stor1.length]) = msg.sender
            if bool(stor1.length) != 1:
                idx = idx + 1
                continue 
            stor2++
            require stor2 < stor1.length
            mem[0] = 1
            call address(stor1[stor2]) with:
               value 194 * 10^15 wei
                 gas 0 wei
            require ext_call.success
            idx = idx + 1
            continue 
        emit Joined(msg.value / 10^17, 2 * stor1.length, msg.sender);
        if msg.value - (10^17 * msg.value / 10^17) <= 10^15:
        call msg.sender with:
           value msg.value - (10^17 * msg.value / 10^17) wei
             gas 2300 * is_zero(value) wei
    require ext_call.success
}



}
