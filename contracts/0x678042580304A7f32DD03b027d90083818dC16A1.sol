contract main {


// =======================  Init code  ======================


address stor0;

function _fallback() payable {
    stor0 = msg.sender
    return code.data[83 len 1873]
}



// =====================  Runtime code  =====================


const CONTRACT_VERSION = 'A'

const CONTRACT_NAME = 'EtherealTipJar'

const QUOTE = Array(len=103, data=''The universe never did make sen', 'se; I suspect it was built on go', 'vernment contract.' -Robert A. H', 'einlein' >> 512, Mask(56, -768, ''The universe never did make sen', 'se; I suspect it was built on go', 'vernment contract.' -Robert A. H', 'einlein') << 768)


address stor0;

function Terminate() {
    require msg.sender == stor0
    selfdestruct(stor0)
}

function IsOwner(address arg1) {
    return (stor0 == arg1)
}

function _fallback() payable {
    emit RecievedTip(msg.value, msg.sender);
}

function TransferOwner(address arg1) {
    require msg.sender == stor0
    stor0 = arg1
}

function TransferEth(address arg1, uint256 arg2) {
    require msg.sender == stor0
    require eth.balance(this.address) >= arg2
    if arg2 > 0:
        call arg1 with:
           value arg2 wei
             gas 2300 * is_zero(value) wei
        require ext_call.success
        emit TransferedEth(arg2, arg1);
}



}
