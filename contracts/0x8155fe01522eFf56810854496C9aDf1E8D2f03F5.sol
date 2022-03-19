contract main {


// =======================  Init code  ======================


uint256 stor0;
uint256 stor1;

function _fallback() payable {
    stor0 = code.data[525 len 32]
    stor1 = msg.sender or Mask(96, 160, stor1)
    return code.data[69 len 456]
}



// =====================  Runtime code  =====================


address stor0;
uint256 stor0;
address getOwner;
uint256 stor1;

function GetOwner() payable {
    return address(getOwner)
}

function _fallback() payable {
  stop
}

function SetOwner(address arg1) payable {
    if address(getOwner) == msg.sender:
        uint256(stor1) = arg1 or Mask(96, 160, uint256(stor1))
}

function SetBigContract(address arg1) payable {
    if msg.sender == address(stor0):
        uint256(stor0) = arg1 or Mask(96, 160, uint256(stor0))
}

function GetMoney(uint256 arg1, address arg2) payable {
    if msg.sender == address(stor0):
        call arg2 with:
           value arg1 wei
             gas 0 wei
}

function UniversalFunctionSecure(uint8 arg1, bytes32 arg2, bytes32 arg3, bytes32 arg4, bytes32 arg5, bytes32 arg6) payable {
    if address(getOwner) == msg.sender:
        call address(stor0).UniversalFunction(uint8 rg1, bytes32 rg2, bytes32 rg3, bytes32 rg4, bytes32 rg5, bytes32 rg6) with:
             gas gas_remaining - 25050 wei
            args arg1 << 248, arg2, arg3, arg4, arg5, arg6
        require ext_call.success
}



}
