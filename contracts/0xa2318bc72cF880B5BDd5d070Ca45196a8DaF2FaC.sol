contract main {


// =======================  Init code  ======================


address stor0;
array of uint256 stor2;
address stor3;
uint256 stor4;

function _fallback() payable {
    bool(stor2.length) = 0
    stor2.length.field_1 = 3
    stor2.length.field_8 = '0.1' / 256
    idx = 0
    while stor2.length + 31 / 32 > idx:
        stor2[idx].field_0 = 0
        idx = idx + 1
        continue 
    stor4 = 2
    require not msg.value
    stor0 = msg.sender
    require code.data[4142 len 20]
    stor3 = code.data[4142 len 20]
    return code.data[486 len 3644]
}



// =====================  Runtime code  =====================


address owner;
address newOwner;
array of uint256 version;
address tokenChangerAddress;
uint256 stor4;

function tokenChanger() {
    return tokenChangerAddress
}

function version() {
    return version[0 len version.length]
}

function owner() {
    return owner
}

function newOwner() {
    return newOwner
}

function setFlag(uint256 arg1) {
    stor4 = arg1
}

function transferOwnership(address arg1) {
    require msg.sender == owner
    require arg1 != owner
    newOwner = arg1
}

function acceptOwnership() {
    require msg.sender == newOwner
    emit OwnerUpdate(owner, newOwner);
    owner = newOwner
    newOwner = 0
}

function withdrawTokens(address arg1, address arg2, uint256 arg3) {
    require msg.sender == owner
    require arg1
    require arg2
    require arg2 != this.address
    require ext_code.size(arg1)
    call arg1.0xa9059cbb with:
         gas gas_remaining - 710 wei
        args address(arg2), arg3
    require ext_call.success
    require ext_call.return_data[0]
}

function buy() payable {
    require ext_code.size(tokenChangerAddress)
    call tokenChangerAddress.0xfc0c546a with:
         gas gas_remaining - 710 wei
    require ext_call.success
    if not stor4:
        if ext_code.size(address(ext_call.return_data[0])):
            call address(ext_call.return_data[0]).issue(address rg1, uint256 rg2) with:
                 gas gas_remaining - 710 wei
                args address(this.address), 10^10 * msg.value
            if ext_call.success:
    else:
        if stor4 == 1:
            delegate 0x51a3ac2399c89ffa893b0f627c740c05193875a6 with:
               funct (Mask(32, 224, sha3('token.issue(address,uint256)')) >> 224)
                 gas gas_remaining - 710 wei
                args address(this.address), 10^10 * msg.value
            if delegate.return_code:
        else:
            if stor4 != 2:
                if stor4 != 3:
                delegate tokenChangerAddress with:
                   funct (Mask(32, 224, sha3('token.issue(address,uint256)')) >> 224)
                     gas gas_remaining - 710 wei
                    args address(this.address), 10^10 * msg.value
                if delegate.return_code:
            else:
                if ext_code.size(tokenChangerAddress):
                    call tokenChangerAddress.0xfc0c546a with:
                         gas gas_remaining - 710 wei
                    if ext_call.success:
                        if ext_code.size(address(ext_call.return_data[0])):
                            call address(ext_call.return_data[0]).issue(address rg1, uint256 rg2) with:
                                 gas gas_remaining - 710 wei
                                args address(this.address), 10^10 * msg.value
                            if ext_call.success:
    revert
}

function _fallback() payable {
    require ext_code.size(tokenChangerAddress)
    call tokenChangerAddress.0xfc0c546a with:
         gas gas_remaining - 710 wei
    require ext_call.success
    if not stor4:
        if ext_code.size(address(ext_call.return_data[0])):
            call address(ext_call.return_data[0]).issue(address rg1, uint256 rg2) with:
                 gas gas_remaining - 710 wei
                args address(this.address), 10^10 * msg.value
            if ext_call.success:
    else:
        if stor4 == 1:
            delegate 0x51a3ac2399c89ffa893b0f627c740c05193875a6 with:
               funct (Mask(32, 224, sha3('token.issue(address,uint256)')) >> 224)
                 gas gas_remaining - 710 wei
                args address(this.address), 10^10 * msg.value
            if delegate.return_code:
        else:
            if stor4 != 2:
                if stor4 != 3:
                delegate tokenChangerAddress with:
                   funct (Mask(32, 224, sha3('token.issue(address,uint256)')) >> 224)
                     gas gas_remaining - 710 wei
                    args address(this.address), 10^10 * msg.value
                if delegate.return_code:
            else:
                if ext_code.size(tokenChangerAddress):
                    call tokenChangerAddress.0xfc0c546a with:
                         gas gas_remaining - 710 wei
                    if ext_call.success:
                        if ext_code.size(address(ext_call.return_data[0])):
                            call address(ext_call.return_data[0]).issue(address rg1, uint256 rg2) with:
                                 gas gas_remaining - 710 wei
                                args address(this.address), 10^10 * msg.value
                            if ext_call.success:
    revert
}



}
