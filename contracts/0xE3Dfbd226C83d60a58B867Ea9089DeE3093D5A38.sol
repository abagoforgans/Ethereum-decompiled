contract main {


// =======================  Init code  ======================


address stor0;

function _fallback() payable {
    stor0 = msg.sender
    return code.data[83 len 2576]
}



// =====================  Runtime code  =====================


const CONTRACT_VERSION = 'A'

const URL = 'none'

const CAUSE = 'EtherealCharity Creation'

const CONTRACT_NAME = 'EtherealCharity'

const QUOTE = Array(len=124, data=''A man who procrastinates in his', ' choosing will inevitably have h', 'is choice made for him by circum', 'stance.' -Hunter S. Thompson' >> 512, Mask(224, -768, ''A man who procrastinates in his', ' choosing will inevitably have h', 'is choice made for him by circum', 'stance.' -Hunter S. Thompson') << 768)


address stor0;

function Terminate() {
    require msg.sender == stor0
    selfdestruct(stor0)
}

function IsOwner(address arg1) {
    return (stor0 == arg1)
}

function _fallback() payable {
    emit RecievedAnonDonation(msg.value, msg.sender);
}

function TransferOwner(address arg1) {
    require msg.sender == stor0
    stor0 = arg1
}

function Donate(string arg1) payable {
    emit RecievedDonation(msg.value, Array(len=arg1.length, data=arg1[all]), msg.sender);
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
