contract main {


// =======================  Init code  ======================


address stor3;
uint256 stor4;
uint128 stor5; offset 160

function _fallback() payable {
    stor4 = 0
    stor5 = 0
    require not msg.value
    stor3 = msg.sender
    require msg.sender == stor3
    if code.data[5740 len 20]:
        stor3 = code.data[5740 len 20]
    return code.data[404 len 5324]
}



// =====================  Runtime code  =====================


const name = 'ArtCoin'

const decimals = 18

const symbol = 'ART'


mapping of uint256 balanceOf;
mapping of uint256 allowance;
address owner;
uint256 totalSupply;
uint8 stor5; offset 160
uint128 stor5; offset 160
address stor5;

function totalSupply() {
    return totalSupply
}

function transferEnabled() {
    return bool(uint8(stor5.field_160))
}

function balanceOf(address arg1) {
    return balanceOf[address(arg1)]
}

function owner() {
    return owner
}

function allowance(address arg1, address arg2) {
    return allowance[address(arg1)][address(arg2)]
}

function _fallback() payable {
    revert
}

function setMinter(address arg1) {
    require msg.sender == owner
    address(stor5.field_0) = arg1
}

function transferOwnership(address arg1) {
    require msg.sender == owner
    if arg1:
        owner = arg1
}

function enableTransfer(bool arg1) {
    require msg.sender == owner
    Mask(96, 0, stor5.field_160) = Mask(96, 0, arg1)
}

function approve(address arg1, uint256 arg2) {
    if arg2:
        require not allowance[address(msg.sender)][address(arg1)]
    allowance[address(msg.sender)][address(arg1)] = arg2
    emit Approval(arg2, msg.sender, arg1);
    return 1
}

function mint(address arg1, uint256 arg2) {
    require totalSupply + arg2 >= totalSupply
    require totalSupply + arg2 <= 200000000 * 10^18
    require address(stor5.field_0) == msg.sender
    require totalSupply + arg2 >= totalSupply
    totalSupply += arg2
    require balanceOf[address(arg1)] + arg2 >= balanceOf[address(arg1)]
    balanceOf[address(arg1)] += arg2
    emit Transfer(arg2, 0, arg1);
}

function transferFrom(address arg1, address arg2, uint256 arg3) {
    require balanceOf[address(arg2)] + arg3 >= balanceOf[address(arg2)]
    balanceOf[address(arg2)] += arg3
    require arg3 <= balanceOf[address(arg1)]
    balanceOf[address(arg1)] -= arg3
    require arg3 <= allowance[address(arg1)][address(msg.sender)]
    allowance[address(arg1)][address(msg.sender)] -= arg3
    emit Transfer(arg3, arg1, arg2);
    return 1
}

function transfer(address arg1, uint256 arg2) {
    require uint8(stor5.field_160)
    require arg2 <= balanceOf[address(msg.sender)]
    balanceOf[address(msg.sender)] -= arg2
    require balanceOf[address(arg1)] + arg2 >= balanceOf[address(arg1)]
    balanceOf[address(arg1)] += arg2
    if ext_code.size(arg1) <= 0:
        if msg.value > 0:
            call arg1 with:
               value msg.value wei
                 gas 2300 * is_zero(value) wei
            require ext_call.success
    else:
        require ext_code.size(arg1)
        call arg1.tokenFallback(address rg1, uint256 rg2, bytes rg3) with:
           value msg.value wei
             gas gas_remaining - 9710 wei
            args msg.sender, arg2, 96, 0
        require ext_call.success
    emit Transfer(arg2, msg.sender, arg1);
    return 1
}

function transfer(address arg1, uint256 arg2, bytes arg3) {
    require uint8(stor5.field_160)
    require arg2 <= balanceOf[address(msg.sender)]
    balanceOf[address(msg.sender)] -= arg2
    require balanceOf[address(arg1)] + arg2 >= balanceOf[address(arg1)]
    balanceOf[address(arg1)] += arg2
    if ext_code.size(arg1) <= 0:
        if msg.value > 0:
            call arg1 with:
               value msg.value wei
                 gas 2300 * is_zero(value) wei
            require ext_call.success
    else:
        require ext_code.size(arg1)
        call arg1.tokenFallback(address rg1, uint256 rg2, bytes rg3) with:
           value msg.value wei
             gas gas_remaining - 9710 wei
            args msg.sender, arg2, Array(len=arg3.length, data=arg3[all])
        require ext_call.success
    emit Transfer(arg2, msg.sender, arg1);
    if arg3.length > 0:
        emit TransferData(arg2, Array(len=arg3.length, data=arg3[all]), msg.sender, arg1);
}

function transferAndPay(address arg1, uint256 arg2, bytes arg3) payable {
    require uint8(stor5.field_160)
    require arg2 <= balanceOf[address(msg.sender)]
    balanceOf[address(msg.sender)] -= arg2
    require balanceOf[address(arg1)] + arg2 >= balanceOf[address(arg1)]
    balanceOf[address(arg1)] += arg2
    if ext_code.size(arg1) <= 0:
        if msg.value > 0:
            call arg1 with:
               value msg.value wei
                 gas 2300 * is_zero(value) wei
            require ext_call.success
    else:
        require ext_code.size(arg1)
        call arg1.tokenFallback(address rg1, uint256 rg2, bytes rg3) with:
           value msg.value wei
             gas gas_remaining - 9710 wei
            args msg.sender, arg2, Array(len=arg3.length, data=arg3[all])
        require ext_call.success
    emit Transfer(arg2, msg.sender, arg1);
    if arg3.length > 0:
        emit TransferData(arg2, Array(len=arg3.length, data=arg3[all]), msg.sender, arg1);
}



}
