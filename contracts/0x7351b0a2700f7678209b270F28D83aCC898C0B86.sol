contract main {


// =======================  Init code  ======================


address stor0;
array of uint256 stor2;
address stor3;
address stor4;

function _fallback() payable {
    bool(stor2.length) = 0
    stor2.length.field_1 = 3
    stor2.length.field_8 = '0.1' / 256
    idx = 0
    while stor2.length + 31 / 32 > idx:
        stor2[idx].field_0 = 0
        idx = idx + 1
        continue 
    if not msg.value:
        stor0 = msg.sender
        require code.data[4384 len 20]
        require code.data[4416 len 20]
        stor3 = code.data[4384 len 20]
        stor4 = code.data[4416 len 20]
        if ext_code.size(stor3):
            call stor3.getReserveBalance(address rg1) with:
                 gas gas_remaining - 710 wei
                args stor4
            if ext_call.success:
                return code.data[871 len 3501]
    revert
}



// =====================  Runtime code  =====================


address owner;
address newOwner;
array of uint256 version;
address tokenChangerAddress;
uint32 stor4;
address etherTokenAddress;

function tokenChanger() {
    return tokenChangerAddress
}

function version() {
    return version[0 len version.length]
}

function owner() {
    return owner
}

function etherToken() {
    return address(etherTokenAddress)
}

function newOwner() {
    return newOwner
}

function transferOwnership(address arg1) {
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
    require arg1
    require arg2
    require ext_code.size(arg1)
    call arg1.0xa9059cbb with:
         gas gas_remaining - 710 wei
        args address(arg2), arg3
    require ext_call.success
}

function _fallback() payable {
    require ext_code.size(address(etherTokenAddress))
    call address(etherTokenAddress).deposit() with:
       value msg.value wei
         gas gas_remaining - 9710 wei
    require ext_call.success
    require ext_code.size(address(etherTokenAddress))
    call address(etherTokenAddress).approve(address rg1, uint256 rg2) with:
         gas gas_remaining - 710 wei
        args tokenChangerAddress, 0
    require ext_call.success
    require ext_code.size(address(etherTokenAddress))
    call address(etherTokenAddress).approve(address rg1, uint256 rg2) with:
         gas gas_remaining - 710 wei
        args tokenChangerAddress, msg.value
    require ext_call.success
    require ext_code.size(tokenChangerAddress)
    call tokenChangerAddress.0xfc0c546a with:
         gas gas_remaining - 710 wei
    require ext_call.success
    require ext_code.size(tokenChangerAddress)
    call tokenChangerAddress.change(address rg1, address rg2, uint256 rg3, uint256 rg4) with:
         gas gas_remaining - 710 wei
        args 0, uint32(stor4), address(ext_call.return_data[0]), 1000, 1
    require ext_call.success
    require ext_code.size(address(ext_call.return_data[0]))
    call address(ext_call.return_data[0]).0xa9059cbb with:
         gas gas_remaining - 710 wei
        args msg.sender, ext_call.return_data[0]
    require ext_call.success
}

function buy() payable {
    require ext_code.size(address(etherTokenAddress))
    call address(etherTokenAddress).deposit() with:
       value msg.value wei
         gas gas_remaining - 9710 wei
    require ext_call.success
    require ext_code.size(address(etherTokenAddress))
    call address(etherTokenAddress).approve(address rg1, uint256 rg2) with:
         gas gas_remaining - 710 wei
        args tokenChangerAddress, 0
    require ext_call.success
    require ext_code.size(address(etherTokenAddress))
    call address(etherTokenAddress).approve(address rg1, uint256 rg2) with:
         gas gas_remaining - 710 wei
        args tokenChangerAddress, msg.value
    require ext_call.success
    require ext_code.size(tokenChangerAddress)
    call tokenChangerAddress.0xfc0c546a with:
         gas gas_remaining - 710 wei
    require ext_call.success
    require ext_code.size(tokenChangerAddress)
    call tokenChangerAddress.change(address rg1, address rg2, uint256 rg3, uint256 rg4) with:
         gas gas_remaining - 710 wei
        args 0, uint32(stor4), address(ext_call.return_data[0]), 1000, 1
    require ext_call.success
    require ext_code.size(address(ext_call.return_data[0]))
    call address(ext_call.return_data[0]).0xa9059cbb with:
         gas gas_remaining - 710 wei
        args msg.sender, ext_call.return_data[0]
    require ext_call.success
    return ext_call.return_data[0]
}



}
