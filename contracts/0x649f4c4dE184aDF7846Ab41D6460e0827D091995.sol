contract main {


// =======================  Init code  ======================


const _fallback = code.data[30 len 760]




// =====================  Runtime code  =====================


mapping of uint256 balance;
mapping of uint8 stor1;
mapping of struct stor2;

function getBalance() {
    return balance[address(msg.sender)]
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
    stor2[address(arg1)][address(arg2)].field_0 = arg3
    stor2[address(arg1)][address(arg2)].field_256 = arg4
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
    if (arg3 * stor2[address(arg1)][address(arg2)].field_0) - (stor2[address(arg1)][address(arg2)].field_256 * stor2[address(arg1)][address(arg2)].field_0) <= balance[address(arg1)]:
        balance[address(arg1)] = balance[address(arg1)] - (arg3 * stor2[address(arg1)][address(arg2)].field_0) + (stor2[address(arg1)][address(arg2)].field_256 * stor2[address(arg1)][address(arg2)].field_0)
        balance[arg2] = (arg3 * stor2[address(arg1)][address(arg2)].field_0) - (stor2[address(arg1)][address(arg2)].field_256 * stor2[address(arg1)][address(arg2)].field_0) + balance[arg2]
    else:
        balance[address(arg1)] = 0
        balance[arg2] += balance[address(arg1)]
}



}
