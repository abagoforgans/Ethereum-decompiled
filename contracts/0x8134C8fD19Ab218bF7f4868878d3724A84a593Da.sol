contract main {


// =======================  Init code  ======================


address stor0;

function _fallback() {
    stor0 = msg.sender
    return code.data[71 len 490]
}



// =====================  Runtime code  =====================


address owner;
uint256 balance;

function owner() {
    return owner
}

function balance() {
    return balance
}

function _fallback() payable {
    revert
}

function deposit() payable {
    require msg.sender == owner
    balance += msg.value
}

function withdraw(uint256 arg1) payable {
    require msg.sender == owner
    require arg1 >= balance
    balance -= arg1
    call owner with:
       value arg1 wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        balance += arg1
}



}
