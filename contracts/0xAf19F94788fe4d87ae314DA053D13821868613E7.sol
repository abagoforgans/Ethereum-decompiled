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
    require code.data[4598 len 20]
    stor3 = code.data[4598 len 20]
    return code.data[488 len 4098]
}



// =====================  Runtime code  =====================


address owner;
address newOwner;
array of uint256 version;
address tokenChangerAddress;
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

function newOwner() {
    return newOwner
}

function setFlag(uint256 arg1) {
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

function buy() payable {
    require ext_code.size(tokenChangerAddress)
    call tokenChangerAddress.0xfc0c546a with:
         gas gas_remaining - 710 wei
    require ext_call.success
    if not flag:
        delegate 0x51a3ac2399c89ffa893b0f627c740c05193875a6 with:
           funct (Mask(32, 224, sha3('tokenChanger.issueTokens(address', ',uint256)')) >> 224)
             gas gas_remaining - 710 wei
            args address(this.address), 10^10 * msg.value
    else:
        if flag == 1:
            delegate 0x51a3ac2399c89ffa893b0f627c740c05193875a6 with:
               funct (Mask(32, 224, sha3('tokenChanger.token().issue(addre', 'ss,uint256)')) >> 224)
                 gas gas_remaining - 710 wei
                args address(this.address), 10^10 * msg.value
        else:
            if flag == 2:
                delegate 0x51a3ac2399c89ffa893b0f627c740c05193875a6 with:
                   funct (Mask(32, 224, sha3('smartToken.issue(address,uint256', ')')) >> 224)
                     gas gas_remaining - 710 wei
                    args address(this.address), 10^10 * msg.value
            else:
                if flag == 3:
                    delegate 0xca83bd8c4c7b1c0409b25fbd7e70b1ef57629ff4 with:
                       funct (Mask(32, 224, sha3('issueTokens(address,uint256)')) >> 224)
                         gas gas_remaining - 710 wei
                        args address(this.address), 10^10 * msg.value
                else:
                    if flag != 4:
                    delegate 0xca83bd8c4c7b1c0409b25fbd7e70b1ef57629ff4 with:
                       funct (Mask(32, 224, sha3('token.issue(address,uint256)')) >> 224)
                         gas gas_remaining - 710 wei
                        args address(this.address), 10^10 * msg.value
    require delegate.return_code
}

function _fallback() payable {
    require ext_code.size(tokenChangerAddress)
    call tokenChangerAddress.0xfc0c546a with:
         gas gas_remaining - 710 wei
    require ext_call.success
    if not flag:
        delegate 0x51a3ac2399c89ffa893b0f627c740c05193875a6 with:
           funct (Mask(32, 224, sha3('tokenChanger.issueTokens(address', ',uint256)')) >> 224)
             gas gas_remaining - 710 wei
            args address(this.address), 10^10 * msg.value
    else:
        if flag == 1:
            delegate 0x51a3ac2399c89ffa893b0f627c740c05193875a6 with:
               funct (Mask(32, 224, sha3('tokenChanger.token().issue(addre', 'ss,uint256)')) >> 224)
                 gas gas_remaining - 710 wei
                args address(this.address), 10^10 * msg.value
        else:
            if flag == 2:
                delegate 0x51a3ac2399c89ffa893b0f627c740c05193875a6 with:
                   funct (Mask(32, 224, sha3('smartToken.issue(address,uint256', ')')) >> 224)
                     gas gas_remaining - 710 wei
                    args address(this.address), 10^10 * msg.value
            else:
                if flag == 3:
                    delegate 0xca83bd8c4c7b1c0409b25fbd7e70b1ef57629ff4 with:
                       funct (Mask(32, 224, sha3('issueTokens(address,uint256)')) >> 224)
                         gas gas_remaining - 710 wei
                        args address(this.address), 10^10 * msg.value
                else:
                    if flag != 4:
                    delegate 0xca83bd8c4c7b1c0409b25fbd7e70b1ef57629ff4 with:
                       funct (Mask(32, 224, sha3('token.issue(address,uint256)')) >> 224)
                         gas gas_remaining - 710 wei
                        args address(this.address), 10^10 * msg.value
    require delegate.return_code
}



}
