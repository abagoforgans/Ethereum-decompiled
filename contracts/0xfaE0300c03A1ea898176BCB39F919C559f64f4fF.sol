contract main {


// =======================  Init code  ======================


address stor0;

function _fallback() payable {
    stor0 = msg.sender
    return code.data[48 len 633]
}



// =====================  Runtime code  =====================


address stor0;
address owner;
mapping of uint256 deposits;

function owner() {
    return owner
}

function deposits(address arg1) {
    return deposits[arg1]
}

function kill() {
    require stor0 == msg.sender
    if eth.balance(this.address):
    selfdestruct(msg.sender)
}

function init() {
    owner = msg.sender
}

function deposit() payable {
    require msg.value >= 10^17
    deposits[address(msg.sender)] += msg.value
}

function _fallback() payable {
    require msg.value >= 10^17
    deposits[address(msg.sender)] += msg.value
}

function withdraw(uint256 arg1) {
    require stor0 == msg.sender
    if arg1 <= deposits[address(msg.sender)]:
        if deposits[address(msg.sender)] > 0:
            call msg.sender with:
               value arg1 wei
                 gas 2300 * is_zero(value) wei
}



}
