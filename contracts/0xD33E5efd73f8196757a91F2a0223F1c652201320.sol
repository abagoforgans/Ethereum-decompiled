contract main {


// =======================  Init code  ======================


address stor0;
array of uint256 stor2;
address stor3;
address stor4;
uint256 stor5;

function _fallback() payable {
    bool(stor2.length) = 0
    stor2.length.field_1 = 3
    stor2.length.field_8 = '0.1' / 256
    idx = 0
    while stor2.length + 31 / 32 > idx:
        stor2[idx].field_0 = 0
        idx = idx + 1
        continue 
    stor5 = 0
    if not msg.value:
        stor0 = msg.sender
        require code.data[5697 len 20]
        require code.data[5729 len 20]
        stor3 = code.data[5697 len 20]
        stor4 = code.data[5729 len 20]
        if ext_code.size(stor3):
            call stor3.getReserveBalance(address rg1) with:
                 gas gas_remaining - 710 wei
                args stor4
            if ext_call.success:
                return code.data[876 len 4809]
    revert
}



// =====================  Runtime code  =====================


address owner;
address newOwner;
array of uint256 version;
address tokenChangerAddress;
address etherTokenAddress;
uint256 flag;

function tokenChanger() {
    return tokenChangerAddress
}

function version() {
    return version[0 len version.length]
}

function flag() {
    return flag
}

function owner() {
    return owner
}

function etherToken() {
    return etherTokenAddress
}

function newOwner() {
    return newOwner
}

function _fallback() payable {
    revert
}

function setFlag(uint256 arg1) {
    require msg.sender == owner
    flag = arg1
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

function buy(uint256 arg1) {
    require msg.sender == owner
    if not flag:
        delegate 0xca83bd8c4c7b1c0409b25fbd7e70b1ef57629ff4 with:
           funct (Mask(32, 224, sha3('etherToken.approve(address,uint2', '56)')) >> 224)
             gas gas_remaining - 710 wei
            args address(this.address), 0
        require delegate.return_code
        delegate 0xca83bd8c4c7b1c0409b25fbd7e70b1ef57629ff4 with:
           funct (Mask(32, 224, sha3('etherToken.approve(address,uint2', '56)')) >> 224)
             gas gas_remaining - 710 wei
            args address(this.address), arg1
    if flag == 1:
        if ext_code.size(etherTokenAddress):
            call etherTokenAddress.0x23b872dd with:
                 gas gas_remaining - 710 wei
                args 0xca83bd8c4c7b1c0409b25fbd7e70b1ef57629ff4, address(this.address), arg1
            if ext_call.success:
                if ext_code.size(etherTokenAddress):
                    call etherTokenAddress.0x2e1a7d4d with:
                         gas gas_remaining - 710 wei
                        args arg1
                    if ext_call.success:
    else:
        if flag != 2:
        delegate 0xca83bd8c4c7b1c0409b25fbd7e70b1ef57629ff4 with:
           funct (Mask(32, 224, sha3('etherToken.approve(address,uint2', '56)')) >> 224)
             gas gas_remaining - 710 wei
            args address(this.address), 0
        if delegate.return_code:
            delegate 0xca83bd8c4c7b1c0409b25fbd7e70b1ef57629ff4 with:
               funct (Mask(32, 224, sha3('etherToken.approve(address,uint2', '56)')) >> 224)
                 gas gas_remaining - 710 wei
                args address(this.address), arg1
            if ext_code.size(etherTokenAddress):
                call etherTokenAddress.0x23b872dd with:
                     gas gas_remaining - 710 wei
                    args 0xca83bd8c4c7b1c0409b25fbd7e70b1ef57629ff4, address(this.address), arg1
                if ext_call.success:
                    if ext_code.size(etherTokenAddress):
                        call etherTokenAddress.0x2e1a7d4d with:
                             gas gas_remaining - 710 wei
                            args arg1
                        if ext_call.success:
    revert
}



}
