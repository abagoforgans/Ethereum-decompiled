contract main {


// =======================  Init code  ======================


uint8 stor3; offset 160
address stor3;

function _fallback() payable {
    uint8(stor3.field_160) = 0
    address(stor3.field_0) = msg.sender
    return code.data[65 len 3984]
}



// =====================  Runtime code  =====================


const name = 'CabCoin'

const decimals = 18

const maxTokenSupply = 1000000000 * 10^18

const symbol = 'CAB'

const TEAM_SHARE_PERCENTAGE = 16


uint256 totalSupply;
mapping of uint256 balanceOf;
mapping of uint256 allowance;
uint8 stor3; offset 160
address owner;

function mintingFinished() {
    return bool(stor3)
}

function totalSupply() {
    return totalSupply
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

function transferOwnership(address arg1) {
    require owner == msg.sender
    if arg1:
        owner = arg1
}

function finishMinting() {
    require owner == msg.sender
    stor3 = 1
    emit MintFinished()
    return 1
}

function approve(address arg1, uint256 arg2) {
    if arg2:
        require not allowance[address(msg.sender)][address(arg1)]
    allowance[address(msg.sender)][address(arg1)] = arg2
    emit Approval(arg2, msg.sender, arg1);
    return 1
}

function transfer(address arg1, uint256 arg2) {
    require ext_code.size(0x5f43fb5f69c97c5a31633bdf4e3f10d5b775902a)
    delegate 0x5f43fb5f69c97c5a31633bdf4e3f10d5b775902a.0xb67d77c5 with:
         gas gas_remaining - 710 wei
        args balanceOf[address(msg.sender)], arg2
    require delegate.return_code
    balanceOf[address(msg.sender)] = delegate.return_data[0]
    require ext_code.size(0x5f43fb5f69c97c5a31633bdf4e3f10d5b775902a)
    delegate 0x5f43fb5f69c97c5a31633bdf4e3f10d5b775902a.0x771602f7 with:
         gas gas_remaining - 710 wei
        args balanceOf[arg1], arg2
    require delegate.return_code
    balanceOf[address(arg1)] = delegate.return_data[0]
    emit Transfer(arg2, msg.sender, arg1);
    return 1
}

function getMaxTokenAvaliable() {
    require ext_code.size(0x5f43fb5f69c97c5a31633bdf4e3f10d5b775902a)
    delegate 0x5f43fb5f69c97c5a31633bdf4e3f10d5b775902a.0xb67d77c5 with:
         gas gas_remaining - 710 wei
        args 1000000000 * 10^18, totalSupply
    require delegate.return_code
    require ext_code.size(0x5f43fb5f69c97c5a31633bdf4e3f10d5b775902a)
    delegate 0x5f43fb5f69c97c5a31633bdf4e3f10d5b775902a.0xc8a4ac9c with:
         gas gas_remaining - 710 wei
        args delegate.return_data[0], 84
    require delegate.return_code
    require ext_code.size(0x5f43fb5f69c97c5a31633bdf4e3f10d5b775902a)
    delegate 0x5f43fb5f69c97c5a31633bdf4e3f10d5b775902a.0xa391c15b with:
         gas gas_remaining - 710 wei
        args delegate.return_data[0], 100
    require delegate.return_code
    return delegate.return_data[0]
}

function transferFrom(address arg1, address arg2, uint256 arg3) {
    require ext_code.size(0x5f43fb5f69c97c5a31633bdf4e3f10d5b775902a)
    delegate 0x5f43fb5f69c97c5a31633bdf4e3f10d5b775902a.0x771602f7 with:
         gas gas_remaining - 710 wei
        args balanceOf[address(arg2)], arg3
    require delegate.return_code
    balanceOf[address(arg2)] = delegate.return_data[0]
    require ext_code.size(0x5f43fb5f69c97c5a31633bdf4e3f10d5b775902a)
    delegate 0x5f43fb5f69c97c5a31633bdf4e3f10d5b775902a.0xb67d77c5 with:
         gas gas_remaining - 710 wei
        args balanceOf[arg1], arg3
    require delegate.return_code
    balanceOf[address(arg1)] = delegate.return_data[0]
    require ext_code.size(0x5f43fb5f69c97c5a31633bdf4e3f10d5b775902a)
    delegate 0x5f43fb5f69c97c5a31633bdf4e3f10d5b775902a.0xb67d77c5 with:
         gas gas_remaining - 710 wei
        args allowance[address(arg1)][address(msg.sender)], arg3
    require delegate.return_code
    allowance[address(arg1)][address(msg.sender)] = delegate.return_data[0]
    emit Transfer(arg3, arg1, arg2);
    return 1
}

function mint(address arg1, uint256 arg2) {
    require owner == msg.sender
    require not stor3
    require ext_code.size(0x5f43fb5f69c97c5a31633bdf4e3f10d5b775902a)
    delegate 0x5f43fb5f69c97c5a31633bdf4e3f10d5b775902a.0x771602f7 with:
         gas gas_remaining - 710 wei
        args totalSupply, arg2
    require delegate.return_code
    if delegate.return_data[0] >= 1000000000 * 10^18:
        return 0
    require owner == msg.sender
    require not stor3
    require ext_code.size(0x5f43fb5f69c97c5a31633bdf4e3f10d5b775902a)
    delegate 0x5f43fb5f69c97c5a31633bdf4e3f10d5b775902a.0x771602f7 with:
         gas gas_remaining - 710 wei
        args totalSupply, arg2
    require delegate.return_code
    totalSupply = delegate.return_data[0]
    require ext_code.size(0x5f43fb5f69c97c5a31633bdf4e3f10d5b775902a)
    delegate 0x5f43fb5f69c97c5a31633bdf4e3f10d5b775902a.0x771602f7 with:
         gas gas_remaining - 710 wei
        args balanceOf[address(arg1)], arg2
    require delegate.return_code
    balanceOf[address(arg1)] = delegate.return_data[0]
    emit Mint(arg2, arg1);
    emit Transfer(arg2, 0, arg1);
    return 1
}



}
