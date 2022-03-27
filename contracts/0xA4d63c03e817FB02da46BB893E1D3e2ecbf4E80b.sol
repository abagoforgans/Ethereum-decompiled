contract main {


// =======================  Init code  ======================


address stor3;
address stor4;
address stor5;

function _fallback() {
    stor3 = code.data[3267 len 20]
    stor4 = code.data[3299 len 20]
    stor5 = code.data[3235 len 20]
    return code.data[149 len 3074]
}



// =====================  Runtime code  =====================


const name = 'PZipToken'

const decimals = 10

const symbol = 'PZIP'


mapping of uint256 balanceOf;
mapping of uint256 allowance;
uint256 totalSupply;
address stor4;
address stor5;

function totalSupply() {
    return totalSupply
}

function balanceOf(address arg1) {
    return balanceOf[address(arg1)]
}

function allowance(address arg1, address arg2) {
    return allowance[address(arg1)][address(arg2)]
}

function _fallback() payable {
    revert 
}

function setIssuer(address arg1) {
    if stor5 != msg.sender:
        return 0
    stor5 = arg1
    return 1
}

function redeem(uint256 arg1) {
    if stor5 != msg.sender:
        return 0
    require arg1 <= balanceOf[address(msg.sender)]
    balanceOf[address(msg.sender)] -= arg1
    require arg1 <= totalSupply
    totalSupply -= arg1
    emit Transfer(arg1, msg.sender, this.address);
    return 1
}

function sub_a84d884e(?) {
    require ext_code.size(0x7125ffc29e72125c4d027b56e0ecc341d10cce94)
    delegate 0x7125ffc29e72125c4d027b56e0ecc341d10cce94.0xad9b324e with:
         gas gas_remaining - 50 wei
        args 0, address(arg1), arg2
    require delegate.return_code
    return bool(delegate.return_data[0])
}

function approve(address arg1, uint256 arg2) {
    require ext_code.size(0x7125ffc29e72125c4d027b56e0ecc341d10cce94)
    delegate 0x7125ffc29e72125c4d027b56e0ecc341d10cce94.0x981a2101 with:
         gas gas_remaining - 50 wei
        args 0, 0, msg.sender, address(arg1), arg2
    require delegate.return_code
    return bool(delegate.return_data[0])
}

function transfer(address arg1, uint256 arg2) {
    require ext_code.size(0x7125ffc29e72125c4d027b56e0ecc341d10cce94)
    delegate 0x7125ffc29e72125c4d027b56e0ecc341d10cce94.0xc016692f with:
         gas gas_remaining - 50 wei
        args 0, 0, msg.sender, address(arg1), arg2
    require delegate.return_code
    return bool(delegate.return_data[0])
}

function sub_d5375891(?) {
    if stor4 != msg.sender:
        return 0
    require ext_code.size(0x7125ffc29e72125c4d027b56e0ecc341d10cce94)
    delegate 0x7125ffc29e72125c4d027b56e0ecc341d10cce94.0x981a2101 with:
         gas gas_remaining - 50 wei
        args 0, 0, address(arg1), address(arg2), arg3
    require delegate.return_code
    return bool(delegate.return_data[0])
}

function sub_dd36c91b(?) {
    if stor4 != msg.sender:
        return 0
    require ext_code.size(0x7125ffc29e72125c4d027b56e0ecc341d10cce94)
    delegate 0x7125ffc29e72125c4d027b56e0ecc341d10cce94.0xc016692f with:
         gas gas_remaining - 50 wei
        args 0, 0, address(arg1), address(arg2), arg3
    require delegate.return_code
    return bool(delegate.return_data[0])
}

function sub_1b7c7551(?) {
    if stor4 != msg.sender:
        return 0
    require ext_code.size(0x7125ffc29e72125c4d027b56e0ecc341d10cce94)
    delegate 0x7125ffc29e72125c4d027b56e0ecc341d10cce94.0x6d552f93 with:
         gas gas_remaining - 50 wei
        args 0, 0, 0, address(arg1), address(arg2), arg3
    require delegate.return_code
    return bool(delegate.return_data[0])
}

function transferFrom(address arg1, address arg2, uint256 arg3) {
    require ext_code.size(0x7125ffc29e72125c4d027b56e0ecc341d10cce94)
    delegate 0x7125ffc29e72125c4d027b56e0ecc341d10cce94.0x6d552f93 with:
         gas gas_remaining - 50 wei
        args 0, 0, uint32(msg.sender), address(arg1), address(arg2), arg3
    require delegate.return_code
    return bool(delegate.return_data[0])
}

function issue(uint256 arg1) {
    if stor5 != msg.sender:
        return 0
    require arg1 + balanceOf[address(msg.sender)] >= balanceOf[address(msg.sender)]
    require arg1 + balanceOf[address(msg.sender)] >= arg1
    balanceOf[address(msg.sender)] += arg1
    require arg1 + totalSupply >= totalSupply
    require arg1 + totalSupply >= arg1
    totalSupply += arg1
    emit Transfer(arg1, this.address, msg.sender);
    return 1
}



}
