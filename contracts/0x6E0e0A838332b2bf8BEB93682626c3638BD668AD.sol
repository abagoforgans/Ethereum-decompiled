contract main {


// =======================  Init code  ======================


address stor0;
array of uint256 stor2;
address stor3;
address stor4;
uint256 stor5;
address stor6;
uint256 stor7;

function _fallback() payable {
    bool(stor2.length) = 0
    stor2.length.field_1 = 3
    stor2.length.field_8 = '0.1' / 256
    idx = 0
    while stor2.length + 31 / 32 > idx:
        stor2[idx].field_0 = 0
        idx = idx + 1
        continue 
    stor5 = 375 * 10^14 * 24 * 3600
    stor6 = msg.sender
    stor7 = 1
    if not msg.value:
        stor0 = msg.sender
        require code.data[5568 len 20]
        require code.data[5600 len 20]
        stor3 = code.data[5568 len 20]
        stor4 = code.data[5600 len 20]
        if ext_code.size(stor3):
            call stor3.0x15226b54 with:
                 gas gas_remaining - 710 wei
                args stor4
            if ext_call.success:
                return code.data[956 len 4600]
    revert
}



// =====================  Runtime code  =====================


address owner;
address newOwner;
array of uint256 version;
address tokenChangerAddress;
uint32 stor4;
address etherTokenAddress;
uint256 changeAmount;
address tokenSenderAddress;
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

function tokenSender() {
    return tokenSenderAddress
}

function changeAmount() {
    return changeAmount
}

function etherToken() {
    return address(etherTokenAddress)
}

function newOwner() {
    return newOwner
}

function setFlag(uint256 arg1) {
    require msg.sender == owner
    flag = arg1
}

function sub_6e1cf330(?) {
    require msg.sender == owner
    changeAmount = arg1
}

function sub_bfdbb7be(?) {
    require msg.sender == owner
    tokenSenderAddress = arg1
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
    require ext_call.return_data[0]
    if not msg.value:
        if ext_code.size(address(etherTokenAddress)):
            call address(etherTokenAddress).approve(address rg1, uint256 rg2) with:
                 gas gas_remaining - 710 wei
                args tokenChangerAddress, 10 * 10^6 * msg.value
            if ext_call.success:
                if ext_call.return_data[0]:
                    if ext_code.size(tokenChangerAddress):
                        call tokenChangerAddress.0xfc0c546a with:
                             gas gas_remaining - 710 wei
                        if ext_call.success:
                            if not msg.value:
                                if ext_code.size(tokenChangerAddress):
                                    call tokenChangerAddress.0x5e5144eb with:
                                         gas gas_remaining - 710 wei
                                        args 0, uint32(stor4), address(ext_call.return_data[0]), 10 * 10^6 * msg.value, 1
                                    if ext_call.success:
                                        if ext_code.size(address(ext_call.return_data[0])):
                                            call address(ext_call.return_data[0]).0xa9059cbb with:
                                                 gas gas_remaining - 710 wei
                                                args msg.sender, ext_call.return_data[0]
                                            if ext_call.success:
                                                if ext_call.return_data[0]:
                            else:
                                if msg.value:
                                    if 10 * 10^6 * msg.value / msg.value == 10 * 10^6:
                                        if ext_code.size(tokenChangerAddress):
                                            call tokenChangerAddress.0x5e5144eb with:
                                                 gas gas_remaining - 710 wei
                                                args 0, uint32(stor4), address(ext_call.return_data[0]), 10 * 10^6 * msg.value, 1
                                            if ext_call.success:
                                                if ext_code.size(address(ext_call.return_data[0])):
                                                    call address(ext_call.return_data[0]).0xa9059cbb with:
                                                         gas gas_remaining - 710 wei
                                                        args msg.sender, ext_call.return_data[0]
                                                    if ext_call.success:
                                                        if ext_call.return_data[0]:
    else:
        if msg.value:
            if 10 * 10^6 * msg.value / msg.value == 10 * 10^6:
                if ext_code.size(address(etherTokenAddress)):
                    call address(etherTokenAddress).approve(address rg1, uint256 rg2) with:
                         gas gas_remaining - 710 wei
                        args tokenChangerAddress, 10 * 10^6 * msg.value
                    if ext_call.success:
                        if ext_call.return_data[0]:
                            if ext_code.size(tokenChangerAddress):
                                call tokenChangerAddress.0xfc0c546a with:
                                     gas gas_remaining - 710 wei
                                if ext_call.success:
                                    if not msg.value:
                                        if ext_code.size(tokenChangerAddress):
                                            call tokenChangerAddress.0x5e5144eb with:
                                                 gas gas_remaining - 710 wei
                                                args 0, uint32(stor4), address(ext_call.return_data[0]), 10 * 10^6 * msg.value, 1
                                            if ext_call.success:
                                                if ext_code.size(address(ext_call.return_data[0])):
                                                    call address(ext_call.return_data[0]).0xa9059cbb with:
                                                         gas gas_remaining - 710 wei
                                                        args msg.sender, ext_call.return_data[0]
                                                    if ext_call.success:
                                                        if ext_call.return_data[0]:
                                    else:
                                        if msg.value:
                                            if 10 * 10^6 * msg.value / msg.value == 10 * 10^6:
                                                if ext_code.size(tokenChangerAddress):
                                                    call tokenChangerAddress.0x5e5144eb with:
                                                         gas gas_remaining - 710 wei
                                                        args 0, uint32(stor4), address(ext_call.return_data[0]), 10 * 10^6 * msg.value, 1
                                                    if ext_call.success:
                                                        if ext_code.size(address(ext_call.return_data[0])):
                                                            call address(ext_call.return_data[0]).0xa9059cbb with:
                                                                 gas gas_remaining - 710 wei
                                                                args msg.sender, ext_call.return_data[0]
                                                            if ext_call.success:
                                                                if ext_call.return_data[0]:
    revert
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
    require ext_call.return_data[0]
    if not msg.value:
        if ext_code.size(address(etherTokenAddress)):
            call address(etherTokenAddress).approve(address rg1, uint256 rg2) with:
                 gas gas_remaining - 710 wei
                args tokenChangerAddress, 10 * 10^6 * msg.value
            if ext_call.success:
                if ext_call.return_data[0]:
                    if ext_code.size(tokenChangerAddress):
                        call tokenChangerAddress.0xfc0c546a with:
                             gas gas_remaining - 710 wei
                        if ext_call.success:
                            if not msg.value:
                                if ext_code.size(tokenChangerAddress):
                                    call tokenChangerAddress.0x5e5144eb with:
                                         gas gas_remaining - 710 wei
                                        args 0, uint32(stor4), address(ext_call.return_data[0]), 10 * 10^6 * msg.value, 1
                                    if ext_call.success:
                                        if ext_code.size(address(ext_call.return_data[0])):
                                            call address(ext_call.return_data[0]).0xa9059cbb with:
                                                 gas gas_remaining - 710 wei
                                                args msg.sender, ext_call.return_data[0]
                                            if ext_call.success:
                                                if ext_call.return_data[0]:
                                                    return ext_call.return_data[0]
                            else:
                                if msg.value:
                                    if 10 * 10^6 * msg.value / msg.value == 10 * 10^6:
                                        if ext_code.size(tokenChangerAddress):
                                            call tokenChangerAddress.0x5e5144eb with:
                                                 gas gas_remaining - 710 wei
                                                args 0, uint32(stor4), address(ext_call.return_data[0]), 10 * 10^6 * msg.value, 1
                                            if ext_call.success:
                                                if ext_code.size(address(ext_call.return_data[0])):
                                                    call address(ext_call.return_data[0]).0xa9059cbb with:
                                                         gas gas_remaining - 710 wei
                                                        args msg.sender, ext_call.return_data[0]
                                                    if ext_call.success:
                                                        if ext_call.return_data[0]:
                                                            return ext_call.return_data[0]
    else:
        if msg.value:
            if 10 * 10^6 * msg.value / msg.value == 10 * 10^6:
                if ext_code.size(address(etherTokenAddress)):
                    call address(etherTokenAddress).approve(address rg1, uint256 rg2) with:
                         gas gas_remaining - 710 wei
                        args tokenChangerAddress, 10 * 10^6 * msg.value
                    if ext_call.success:
                        if ext_call.return_data[0]:
                            if ext_code.size(tokenChangerAddress):
                                call tokenChangerAddress.0xfc0c546a with:
                                     gas gas_remaining - 710 wei
                                if ext_call.success:
                                    if not msg.value:
                                        if ext_code.size(tokenChangerAddress):
                                            call tokenChangerAddress.0x5e5144eb with:
                                                 gas gas_remaining - 710 wei
                                                args 0, uint32(stor4), address(ext_call.return_data[0]), 10 * 10^6 * msg.value, 1
                                            if ext_call.success:
                                                if ext_code.size(address(ext_call.return_data[0])):
                                                    call address(ext_call.return_data[0]).0xa9059cbb with:
                                                         gas gas_remaining - 710 wei
                                                        args msg.sender, ext_call.return_data[0]
                                                    if ext_call.success:
                                                        if ext_call.return_data[0]:
                                                            return ext_call.return_data[0]
                                    else:
                                        if msg.value:
                                            if 10 * 10^6 * msg.value / msg.value == 10 * 10^6:
                                                if ext_code.size(tokenChangerAddress):
                                                    call tokenChangerAddress.0x5e5144eb with:
                                                         gas gas_remaining - 710 wei
                                                        args 0, uint32(stor4), address(ext_call.return_data[0]), 10 * 10^6 * msg.value, 1
                                                    if ext_call.success:
                                                        if ext_code.size(address(ext_call.return_data[0])):
                                                            call address(ext_call.return_data[0]).0xa9059cbb with:
                                                                 gas gas_remaining - 710 wei
                                                                args msg.sender, ext_call.return_data[0]
                                                            if ext_call.success:
                                                                if ext_call.return_data[0]:
                                                                    return ext_call.return_data[0]
    revert
}



}
