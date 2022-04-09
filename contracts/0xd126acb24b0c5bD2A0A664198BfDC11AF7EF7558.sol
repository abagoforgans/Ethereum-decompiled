contract main {


// =======================  Init code  ======================


address stor0;
address stor2;
address stor3;
address stor4;
address stor5;
uint8 stor6; offset 152
address stor6;

function _fallback() payable {
    stor2 = 0xa74476443119a942de498590fe1f2454d7d4ac0d
    stor3 = 0xd8775f648430679a709e98d2b0cb6250d2887ef
    stor4 = 0xd8775f648430679a709e98d2b0cb6250d2887ef
    stor5 = this.address
    Mask(152, 0, stor6.field_0) = 0x847daa89786e1f6bf2d2d1db4152878e83e2bd
    uint8(stor6.field_152) = 0
    require not msg.value
    stor0 = msg.sender
    return code.data[505 len 3286]
}



// =====================  Runtime code  =====================


address owner;
address newOwner;
address sub_36a83c67Address;
address sub_45d330f1Address;
address sub_f8e8d0a1Address;
address selfAddress;

function selfAddress() {
    return selfAddress
}

function sub_36a83c67(?) {
    return sub_36a83c67Address
}

function sub_45d330f1(?) {
    return sub_45d330f1Address
}

function owner() {
    return owner
}

function newOwner() {
    return newOwner
}

function sub_f8e8d0a1(?) {
    return sub_f8e8d0a1Address
}

function _fallback() payable {
  stop
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
        call sub_45d330f1Address with:
           funct Mask(32, 224, sha3('transfer(address, uint256)')) >> 224
             gas 200000 wei
            args sub_f8e8d0a1Address, arg2
    else:
        if arg1 == 1:
            delegate sub_45d330f1Address with:
               funct (Mask(32, 224, sha3('transfer(address, uint256)')) >> 224)
                 gas gas_remaining - 710 wei
                args sub_f8e8d0a1Address, arg2
            require delegate.return_code
        else:
            if arg1 != 2:
                if arg1 == 3:
                    call sub_45d330f1Address with:
                       funct Mask(32, 224, sha3('transfer(address, uint256)')) >> 224
                         gas 200000 wei
                        args selfAddress, arg2
}



}
