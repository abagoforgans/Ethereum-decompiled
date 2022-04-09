contract main {


// =======================  Init code  ======================


address stor0;
address stor2;
address stor3;
uint8 stor4; offset 152
address stor4;

function _fallback() payable {
    stor2 = 0xa74476443119a942de498590fe1f2454d7d4ac0d
    stor3 = this.address
    Mask(152, 0, stor4.field_0) = 0x847daa89786e1f6bf2d2d1db4152878e83e2bd
    uint8(stor4.field_152) = 0
    require not msg.value
    stor0 = msg.sender
    return code.data[155 len 1759]
}



// =====================  Runtime code  =====================


address owner;
address newOwner;
address sub_36a83c67Address;
address selfAddress;
address stor4;

function selfAddress() {
    return selfAddress
}

function sub_36a83c67(?) {
    return sub_36a83c67Address
}

function owner() {
    return owner
}

function newOwner() {
    return newOwner
}

function _fallback() payable {
  stop
}

function transferOwnership(address arg1) {
    require owner == msg.sender
    require owner != arg1
    newOwner = arg1
}

function acceptOwnership() {
    require newOwner == msg.sender
    emit OwnerUpdate(owner, newOwner);
    owner = newOwner
    newOwner = 0
}

function withdrawTokens(address arg1, address arg2, uint256 arg3) {
    require owner == msg.sender
    require arg2 != this.address
    require ext_code.size(arg1)
    call arg1.0xa9059cbb with:
         gas gas_remaining - 710 wei
        args address(arg2), arg3
    require ext_call.success
    require ext_call.return_data[0]
}

function sub_d95dce49(?) payable {
    if not arg1:
        call sub_36a83c67Address with:
           funct Mask(32, 224, sha3('send(uint256)')) >> 224
             gas 200000 wei
            args arg2
    else:
        if 1 == arg1:
            call sub_36a83c67Address with:
               funct Mask(32, 224, sha3('transfer(uint256)')) >> 224
                 gas 200000 wei
                args arg2
        else:
            if 2 == arg1:
                delegate sub_36a83c67Address with:
                   funct (Mask(32, 224, sha3('transfer(uint256)')) >> 224)
                     gas gas_remaining - 710 wei
                    args arg2
                require delegate.return_code
            else:
                if 3 == arg1:
                    call sub_36a83c67Address with:
                       funct Mask(32, 224, sha3('transfer(address, uint256)')) >> 224
                         gas 200000 wei
                        args selfAddress, arg2
                else:
                    if 4 == arg1:
                        call sub_36a83c67Address with:
                           funct Mask(32, 224, sha3('transfer(address, uint256)')) >> 224
                             gas 200000 wei
                            args stor4, arg2
}



}
