contract main {


// =======================  Init code  ======================


const _fallback = code.data[28 len 752]




// =====================  Runtime code  =====================


address owner;
address memberAddress;

function owner() {
    return owner
}

function member() {
    return memberAddress
}

function _fallback() {
    revert 
}

function MyContract() {
    owner = msg.sender
}

function deposit() payable {
    if msg.value > 0:
        call owner with:
           value msg.value wei
             gas 2300 * is_zero(value) wei
        require ext_call.success
        emit LogDepositMade(owner, msg.value);
}



}
