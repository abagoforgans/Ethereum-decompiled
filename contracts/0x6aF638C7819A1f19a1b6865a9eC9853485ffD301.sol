contract main {


// =======================  Init code  ======================


address stor3;
address stor4;
address stor5;

function _fallback() {
    stor3 = code.data[3931 len 20]
    stor4 = code.data[3963 len 20]
    require ext_code.size(address(code.data[3951 len 32]))
    call address(code.data[3951 len 32]).0x5dd5e2f with:
         gas gas_remaining - 50 wei
        args Mask(32, 224, sha3('transferAuthed(address,address,u', 'int256)'))
    require ext_call.success
    require ext_code.size(stor4)
    call stor4.0x5dd5e2f with:
         gas gas_remaining - 50 wei
        args Mask(32, 224, sha3('transferFromAuthed(address,addre', 'ss,address,uint256)'))
    require ext_call.success
    require ext_code.size(stor4)
    call stor4.0x5dd5e2f with:
         gas gas_remaining - 50 wei
        args Mask(32, 224, sha3('approveAuthed(address,address,ui', 'nt256)'))
    require ext_call.success
    stor5 = address(code.data[3887 len 32])
    return code.data[813 len 3074]
}



// =====================  Runtime code  =====================


const name = 'PZipToken'

const decimals = 5

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
    require ext_code.size(0x26d9d6001c6bab084aaea4302ed8fff80191414b)
    delegate 0x26d9d6001c6bab084aaea4302ed8fff80191414b.0xb3c180bf with:
         gas gas_remaining - 50 wei
        args 0, address(arg1), arg2
    require delegate.return_code
    return bool(delegate.return_data[0])
}

function approve(address arg1, uint256 arg2) {
    require ext_code.size(0x26d9d6001c6bab084aaea4302ed8fff80191414b)
    delegate 0x26d9d6001c6bab084aaea4302ed8fff80191414b.0x981a2101 with:
         gas gas_remaining - 50 wei
        args 0, 0, msg.sender, address(arg1), arg2
    require delegate.return_code
    return bool(delegate.return_data[0])
}

function transfer(address arg1, uint256 arg2) {
    require ext_code.size(0x26d9d6001c6bab084aaea4302ed8fff80191414b)
    delegate 0x26d9d6001c6bab084aaea4302ed8fff80191414b.0xc016692f with:
         gas gas_remaining - 50 wei
        args 0, 0, msg.sender, address(arg1), arg2
    require delegate.return_code
    return bool(delegate.return_data[0])
}

function sub_d5375891(?) {
    if stor4 != msg.sender:
        return 0
    require ext_code.size(0x26d9d6001c6bab084aaea4302ed8fff80191414b)
    delegate 0x26d9d6001c6bab084aaea4302ed8fff80191414b.0x981a2101 with:
         gas gas_remaining - 50 wei
        args 0, 0, address(arg1), address(arg2), arg3
    require delegate.return_code
    return bool(delegate.return_data[0])
}

function sub_dd36c91b(?) {
    if stor4 != msg.sender:
        return 0
    require ext_code.size(0x26d9d6001c6bab084aaea4302ed8fff80191414b)
    delegate 0x26d9d6001c6bab084aaea4302ed8fff80191414b.0xc016692f with:
         gas gas_remaining - 50 wei
        args 0, 0, address(arg1), address(arg2), arg3
    require delegate.return_code
    return bool(delegate.return_data[0])
}

function sub_1b7c7551(?) {
    if stor4 != msg.sender:
        return 0
    require ext_code.size(0x26d9d6001c6bab084aaea4302ed8fff80191414b)
    delegate 0x26d9d6001c6bab084aaea4302ed8fff80191414b.0x6d552f93 with:
         gas gas_remaining - 50 wei
        args 0, 0, 0, address(arg1), address(arg2), arg3
    require delegate.return_code
    return bool(delegate.return_data[0])
}

function transferFrom(address arg1, address arg2, uint256 arg3) {
    require ext_code.size(0x26d9d6001c6bab084aaea4302ed8fff80191414b)
    delegate 0x26d9d6001c6bab084aaea4302ed8fff80191414b.0x6d552f93 with:
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
