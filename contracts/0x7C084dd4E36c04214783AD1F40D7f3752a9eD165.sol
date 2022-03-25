contract main {


// =======================  Init code  ======================


address stor0;
address stor1;

function _fallback() payable {
    stor0 = 0x9cc04373e74f7dc7718d509025d12294656b328a
    stor1 = 0xa158c2930ac2e713d8053e3daa2bfeb43a998c57
    return code.data[90 len 948]
}



// =====================  Runtime code  =====================


address owner;
address confirmerAddress;
address stor2;
uint256 stor2;
uint256 stor3;
address stor4;
uint256 stor4;
uint256 stor5;

function confirmer() {
    return confirmerAddress
}

function owner() {
    return owner
}

function sub_01f81ba6(?) {
    require msg.sender == confirmerAddress
    if address(stor2) != arg1:
    selfdestruct(arg1)
}

function _fallback() payable {
    revert 
}

function balanceOf(address arg1) {
    if arg1 != owner:
        return 0
    return eth.balance(this.address)
}

function sub_cd5295d3(?) {
    require owner == msg.sender
    uint256(stor2) = arg1 or Mask(96, 160, uint256(stor2))
}

function transfer(address arg1, uint256 arg2) {
    require msg.sender == owner
    stor3 = block.timestamp
    uint256(stor4) = arg1 or Mask(96, 160, uint256(stor4))
    stor5 = arg2
    emit Transfer(arg2, msg.sender, arg1);
    return 1
}

function confirmTransfer() {
    require msg.sender == confirmerAddress
    if 0 == address(stor4):
        emit 0xb8b9aa59: 2
    else:
        if block.timestamp > stor3 + 3600:
            emit 0xb8b9aa59: 3
        else:
            call address(stor4) with:
               value stor5 wei
                 gas gas_remaining - 34050 wei
            if not ext_call.success:
                emit 0xb8b9aa59: 4
            else:
                emit Transfer(stor5, msg.sender, address(stor4));
            stor3 = 0
            address(stor4) = 0
            stor5 = 0
}



}
