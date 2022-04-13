contract main {


// =======================  Init code  ======================


address stor0;

function _fallback() {
    stor0 = code.data[977 len 20]
    return code.data[75 len 890]
}



// =====================  Runtime code  =====================


address stor0;
mapping of uint8 stor1;

function sub_097c1e25(?) {
    selfdestruct(msg.sender)
}

function _fallback() payable {
    revert
}

function sendEther() payable {
    require stor1[address(msg.sender)]
    call stor0 with:
       value msg.value wei
         gas 2300 * is_zero(value) wei
    require ext_call.success
    emit EtherDeposited(msg.sender, msg.value);
}

function createContract() {
    create contract with 0 wei
                    code: code.data[506 len 341]
    require create.new_address
    stor1[address(create.new_address)] = 1
    emit ContractCreated(address(create.new_address));
}



}
