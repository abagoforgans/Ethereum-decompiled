contract main {


// =======================  Init code  ======================


address stor0;

function _fallback() {
    stor0 = msg.sender
    return code.data[60 len 1594]
}



// =====================  Runtime code  =====================


address stor0;
mapping of uint256 withdrawableAmount;
array of struct stor4;

function getWithdrawableAmount() {
    return withdrawableAmount[address(msg.sender)]
}

function kill() {
    require stor0 == msg.sender
    selfdestruct(stor0)
}

function _fallback() payable {
    revert
}

function addFunds() payable {
    require stor0 == msg.sender
}

function sendTo(address arg1, uint256 arg2) {
    require stor0 == msg.sender
    withdrawableAmount[address(arg1)] += arg2
}

function withdraw(uint256 arg1) {
    require withdrawableAmount[address(msg.sender)] - arg1 >= 0
    withdrawableAmount[address(msg.sender)] -= arg1
    call msg.sender with:
       value arg1 wei
         gas 2300 * is_zero(value) wei
}

function withdraw() {
    require withdrawableAmount[address(msg.sender)] > 0
    withdrawableAmount[address(msg.sender)] = 0
    call msg.sender with:
       value withdrawableAmount[address(msg.sender)] wei
         gas 2300 * is_zero(value) wei
}

function sub_f5deb699(?) {
    if arg2 < 600:
        idx = 0
        while idx < stor4.length:
            mem[0] = 4
            if stor4[idx].field_1024 == arg1:
                require idx < stor4.length
                mem[0] = 4
                stor4[idx].field_256 = 'Approved'
            idx = idx + 1
            continue 
        emit 0xd22da02c: address(arg1), arg3
}

function sub_a457e05b(?) {
    stor4.length++
    if not stor4.length <= stor4.length + 1:
        idx = (5 * stor4.length) + 5
        while 5 * stor4.length > idx:
            stor4[idx].field_0 = 0
            stor4[idx].field_256 = 0
            stor4[idx].field_512 = 0
            stor4[idx].field_768 = 0
            stor4[idx].field_1024 = 0
            idx = idx + 5
            continue 
    require stor4.length - 1 < stor4.length
    stor4[stor4.length].field_0 = arg1
    stor4[stor4.length].field_0 = 'Pending Approval'
    stor4[stor4.length].field_0 = arg2
    stor4[stor4.length].field_0 = (2 * arg1) + (3 * arg2)
    stor4[stor4.length].field_0 = arg3
    if arg2 < 600:
        idx = 0
        while idx < stor4.length:
            mem[0] = 4
            if stor4[idx].field_1024 == arg3:
                require idx < stor4.length
                mem[0] = 4
                stor4[idx].field_256 = 'Approved'
            idx = idx + 1
            continue 
        emit 0xd22da02c: address(arg3), (2 * arg1) + (3 * arg2)
}



}
