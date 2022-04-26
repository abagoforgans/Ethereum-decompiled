contract main {


// =======================  Init code  ======================


bool stor0; offset 256
uint8 stor0; offset 160
uint8 stor0; offset 168
address stor0;
mapping of uint256 stor1;
uint256 stor2;
uint256 stor3;

function _fallback() payable {
    address(stor0.field_0) = msg.sender
    uint8(stor0.field_160) = 1
    uint8(stor0.field_168) = 1
    stor0.field_256 % 1 = 0
    stor2 = 500000
    stor3 = 750000
    require not msg.value
    stor1[address(stor0.field_0)] = stor2
    return code.data[171 len 1917]
}



// =====================  Runtime code  =====================


const name = 'Frikandel'

const decimals = 0

const symbol = 'FRKNDL'


uint8 stor0; offset 160
uint8 stor0; offset 168
address contractOwner;
mapping of uint256 balanceOf;
uint256 totalSupply;
uint256 stor3;

function totalSupply() {
    return totalSupply
}

function balanceOf(address arg1) {
    return balanceOf[address(arg1)]
}

function Killable() {
    return bool(uint8(stor0.field_168))
}

function ICOEnabled() {
    return bool(uint8(stor0.field_160))
}

function contractOwner() {
    return contractOwner
}

function Destroy() {
    require contractOwner == msg.sender
    if bool(uint8(stor0.field_168)) != 1:
    selfdestruct(contractOwner)
}

function enableICO() {
    require contractOwner == msg.sender
    uint8(stor0.field_160) = 1
}

function disableICO() {
    require contractOwner == msg.sender
    uint8(stor0.field_160) = 0
}

function transferOwnership(address arg1) {
    require contractOwner == msg.sender
    contractOwner = arg1
}

function DisableSuicide() {
    require contractOwner == msg.sender
    uint8(stor0.field_168) = 0
    return 1
}

function transfer(address arg1, uint256 arg2) {
    require calldata.size >= 68
    if not arg2:
        return 0
    if balanceOf[address(msg.sender)] < arg2:
        return 0
    if arg2 + balanceOf[arg1] < balanceOf[arg1]:
        return 0
    balanceOf[address(msg.sender)] -= arg2
    balanceOf[arg1] += arg2
    emit Transfer(arg2, msg.sender, arg1);
    return 1
}

function _fallback() payable {
    require uint8(stor0.field_160)
    require (msg.value / 10^14) + balanceOf[address(msg.sender)] <= 30000
    require totalSupply + (msg.value / 10^14) <= stor3
    if msg.value:
        call contractOwner with:
           value msg.value wei
             gas 2300 * is_zero(value) wei
        require ext_call.success
        totalSupply += msg.value / 10^14
        balanceOf[address(msg.sender)] += msg.value / 10^14
        emit Transfer((msg.value / 10^14), this.address, msg.sender);
}



}
