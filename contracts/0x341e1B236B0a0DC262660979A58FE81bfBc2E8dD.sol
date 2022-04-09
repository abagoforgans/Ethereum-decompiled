contract main {


// =======================  Init code  ======================


address stor0;
array of uint256 stor2;
address stor3;
address stor4;
address stor5;
uint256 stor6;
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
    stor6 = 0
    stor7 = 100 * 10^18
    if not msg.value:
        stor0 = msg.sender
        require code.data[10703 len 20]
        require code.data[10735 len 20]
        require code.data[10767 len 20]
        stor3 = code.data[10703 len 20]
        stor4 = code.data[10735 len 20]
        stor5 = code.data[10767 len 20]
        if ext_code.size(stor3):
            call stor3.getReserveBalance(address rg1) with:
                 gas gas_remaining - 710 wei
                args stor4
            if ext_call.success:
                return code.data[1007 len 9684]
    revert
}



// =====================  Runtime code  =====================


address owner;
address newOwner;
array of uint256 version;
address tokenChangerAddress;
uint32 stor4;
address etherTokenAddress;
uint32 stor5;
address sub_33435481Address;
uint256 flag;
uint256 changeAmount;

function sub_33435481(?) {
    return address(sub_33435481Address)
}

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

function changeAmount() {
    return changeAmount
}

function etherToken() {
    return address(etherTokenAddress)
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

function sub_6e1cf330(?) {
    require msg.sender == owner
    changeAmount = arg1
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
    call arg1.transfer(address rg1, uint256 rg2) with:
         gas gas_remaining - 710 wei
        args address(arg2), arg3
    require ext_call.success
    require ext_call.return_data[0]
}

function buy() payable {
    require msg.sender == owner
    require ext_code.size(tokenChangerAddress)
    call tokenChangerAddress.token() with:
         gas gas_remaining - 710 wei
    require ext_call.success
    if not flag:
        delegate 0x51a3ac2399c89ffa893b0f627c740c05193875a6 with:
           funct (Mask(32, 224, sha3('setFormula(IBancorFormula)')) >> 224)
             gas gas_remaining - 710 wei
            args 0x9668aaa039162edf285d0e9851f897b1d5518911
        require delegate.return_code
        delegate 0x51a3ac2399c89ffa893b0f627c740c05193875a6 with:
           funct (Mask(32, 224, sha3('setFormula(IBancorFormula)')) >> 224)
             gas gas_remaining - 710 wei
            args 0x8d10c03bc0889a2edea0de12e455a19ac7395b98
        return msg.value
    if flag != 1:
        if flag == 2:
            delegate 0x51a3ac2399c89ffa893b0f627c740c05193875a6 with:
               funct (Mask(32, 224, sha3('addReserve(IERC20Token,uint8,boo', 'l)')) >> 224)
                 gas gas_remaining - 710 wei
                args 0x5264d134dbcccf7b159e201d4104010e48f7316b, 10, 0
            if delegate.return_code:
                return 0
        else:
            if flag != 3:
                if flag != 4:
                    if flag == 5:
                        delegate 0xca83bd8c4c7b1c0409b25fbd7e70b1ef57629ff4 with:
                           funct (Mask(32, 224, sha3('etherToken.transfer(address,uint', '256)')) >> 224)
                             gas gas_remaining - 710 wei
                            args address(this.address), changeAmount
                    else:
                        if flag == 6:
                            delegate 0xd76b5c2a23ef78368d8e34288b5b65d616b746ae with:
                               funct (Mask(32, 224, sha3('transfer(address,uint256)')) >> 224)
                                 gas gas_remaining - 710 wei
                                args address(this.address), changeAmount
                        else:
                            if flag == 7:
                                delegate 0x1f573d6fb3f13d689ff844b4ce37794d79a7ff1c with:
                                   funct (Mask(32, 224, sha3('transfer(address,uint256)')) >> 224)
                                     gas gas_remaining - 710 wei
                                    args address(this.address), changeAmount
                            else:
                                if flag != 8:
                                    return 0
                                delegate 0x51a3ac2399c89ffa893b0f627c740c05193875a6 with:
                                   funct (Mask(32, 224, sha3('transferOwnership(address)')) >> 224)
                                     gas gas_remaining - 710 wei
                                    args 0x847daa89786e1f6bf2d2d1db4152878e83e2bd
                    if delegate.return_code:
                        return 0
                else:
                    delegate 0x1f573d6fb3f13d689ff844b4ce37794d79a7ff1c with:
                       funct (Mask(32, 224, sha3('etherToken.approve(address,uint2', '56)')) >> 224)
                         gas gas_remaining - 710 wei
                        args address(this.address), 0
                    if delegate.return_code:
                        delegate 0x1f573d6fb3f13d689ff844b4ce37794d79a7ff1c with:
                           funct (Mask(32, 224, sha3('etherToken.approve(address,uint2', '56)')) >> 224)
                             gas gas_remaining - 710 wei
                            args address(this.address), 5 * 10^18
                        if ext_code.size(address(etherTokenAddress)):
                            call address(etherTokenAddress).transferFrom(address rg1, address rg2, uint256 rg3) with:
                                 gas gas_remaining - 710 wei
                                args 0x1f573d6fb3f13d689ff844b4ce37794d79a7ff1c, address(this.address), 5 * 10^18
                            if ext_call.success:
                                if ext_code.size(address(etherTokenAddress)):
                                    call address(etherTokenAddress).withdraw(uint256 rg1) with:
                                         gas gas_remaining - 710 wei
                                        args 5 * 10^18
                                    if ext_call.success:
                                        return 0
            else:
                if ext_code.size(address(sub_33435481Address)):
                    call address(sub_33435481Address).approve(address rg1, uint256 rg2) with:
                         gas gas_remaining - 710 wei
                        args tokenChangerAddress, 0
                    if ext_call.success:
                        if ext_call.return_data[0]:
                            if ext_code.size(address(sub_33435481Address)):
                                call address(sub_33435481Address).approve(address rg1, uint256 rg2) with:
                                     gas gas_remaining - 710 wei
                                    args tokenChangerAddress, 1500 * 10^18
                                if ext_call.success:
                                    if ext_call.return_data[0]:
                                        if ext_code.size(tokenChangerAddress):
                                            call tokenChangerAddress.change(address rg1, address rg2, uint256 rg3, uint256 rg4) with:
                                                 gas gas_remaining - 710 wei
                                                args 0, uint32(stor5), address(ext_call.return_data[0]), 14306950385310048930105, 1
                                            if ext_call.success:
                                                delegate 0x51a3ac2399c89ffa893b0f627c740c05193875a6 with:
                                                   funct (Mask(32, 224, sha3('updateReserve(IERC20Token,uint8,', 'bool,uint256)')) >> 224)
                                                     gas gas_remaining - 710 wei
                                                    args 0, 1224159595, 1, 0, 0
                                                if delegate.return_code:
                                                    if ext_code.size(address(ext_call.return_data[0])):
                                                        call address(ext_call.return_data[0]).transfer(address rg1, uint256 rg2) with:
                                                             gas gas_remaining - 710 wei
                                                            args msg.sender, 0
                                                        if ext_call.success:
                                                            if ext_call.return_data[0]:
                                                                return ext_call.return_data[0]
    else:
        if ext_code.size(address(etherTokenAddress)):
            call address(etherTokenAddress).deposit() with:
               value msg.value wei
                 gas gas_remaining - 9710 wei
            if ext_call.success:
                if ext_code.size(address(etherTokenAddress)):
                    call address(etherTokenAddress).approve(address rg1, uint256 rg2) with:
                         gas gas_remaining - 710 wei
                        args tokenChangerAddress, 0
                    if ext_call.success:
                        if ext_call.return_data[0]:
                            if ext_code.size(address(etherTokenAddress)):
                                call address(etherTokenAddress).approve(address rg1, uint256 rg2) with:
                                     gas gas_remaining - 710 wei
                                    args tokenChangerAddress, 1400000 * 10^18
                                if ext_call.success:
                                    if ext_call.return_data[0]:
                                        delegate 0x51a3ac2399c89ffa893b0f627c740c05193875a6 with:
                                           funct (Mask(32, 224, sha3('setFormula(IBancorFormula)')) >> 224)
                                             gas gas_remaining - 710 wei
                                            args 0x9668aaa039162edf285d0e9851f897b1d5518911
                                        if delegate.return_code:
                                            if ext_code.size(tokenChangerAddress):
                                                call tokenChangerAddress.change(address rg1, address rg2, uint256 rg3, uint256 rg4) with:
                                                     gas gas_remaining - 710 wei
                                                    args 0, uint32(stor4), address(ext_call.return_data[0]), msg.value, 1
                                                if ext_call.success:
                                                    delegate 0x51a3ac2399c89ffa893b0f627c740c05193875a6 with:
                                                       funct (Mask(32, 224, sha3('setFormula(IBancorFormula)')) >> 224)
                                                         gas gas_remaining - 710 wei
                                                        args 0x8d10c03bc0889a2edea0de12e455a19ac7395b98
                                                    if delegate.return_code:
                                                        if ext_code.size(address(ext_call.return_data[0])):
                                                            call address(ext_call.return_data[0]).transfer(address rg1, uint256 rg2) with:
                                                                 gas gas_remaining - 710 wei
                                                                args msg.sender, ext_call.return_data[0]
                                                            if ext_call.success:
                                                                if ext_call.return_data[0]:
                                                                    return ext_call.return_data[0]
    revert
}



}
