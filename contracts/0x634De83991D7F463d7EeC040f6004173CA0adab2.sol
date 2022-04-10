contract main {


// =======================  Init code  ======================


const _fallback = code.data[30 len 1027]




// =====================  Runtime code  =====================


mapping of uint256 balance;
mapping of uint8 stor1;
mapping of struct sub_8bba2a01;

function getBalance() {
    return balance[address(msg.sender)]
}

function balances(address arg1) {
    return balance[arg1]
}

function activeCaller(address arg1) {
    return bool(stor1[arg1])
}

function sub_8bba2a01(?) {
    return sub_8bba2a01[arg1][arg2].field_0, sub_8bba2a01[arg1][arg2].field_256
}

function _fallback() payable {
    revert
}

function deposit() payable {
    balance[address(msg.sender)] += msg.value
}

function sub_e39295d6(?) {
    require not stor1[address(arg1)]
    stor1[address(arg1)] = 1
    sub_8bba2a01[address(arg1)][address(arg2)].field_0 = arg3
    sub_8bba2a01[address(arg1)][address(arg2)].field_256 = arg4
}

function withdraw(uint256 arg1) payable {
    require not stor1[address(msg.sender)]
    require arg1 <= balance[address(msg.sender)]
    balance[address(msg.sender)] -= arg1
    call msg.sender with:
       value arg1 wei
         gas 2300 * is_zero(value) wei
    require ext_call.success
}

function sub_b6c2974c(?) {
    if (arg3 * sub_8bba2a01[address(arg1)][address(arg2)].field_0) - (sub_8bba2a01[address(arg1)][address(arg2)].field_256 * sub_8bba2a01[address(arg1)][address(arg2)].field_0) <= balance[address(arg1)]:
        balance[address(arg1)] = balance[address(arg1)] - (arg3 * sub_8bba2a01[address(arg1)][address(arg2)].field_0) + (sub_8bba2a01[address(arg1)][address(arg2)].field_256 * sub_8bba2a01[address(arg1)][address(arg2)].field_0)
        balance[arg2] = (arg3 * sub_8bba2a01[address(arg1)][address(arg2)].field_0) - (sub_8bba2a01[address(arg1)][address(arg2)].field_256 * sub_8bba2a01[address(arg1)][address(arg2)].field_0) + balance[arg2]
    else:
        balance[address(arg1)] = 0
        balance[arg2] += balance[address(arg1)]
}



}
