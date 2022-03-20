contract main {


// =======================  Init code  ======================


const _fallback = code.data[18 len 1290]




// =====================  Runtime code  =====================


address sub_3751707cAddress;
uint256 stor0;
address stor1;
uint256 stor1;
uint256 name;
mapping of uint256 balances;

function name() payable {
    return name
}

function balances(address arg1) payable {
    return balances[arg1]
}

function sub_3751707c(?) payable {
    return address(sub_3751707cAddress)
}

function getBalance(address arg1) payable {
    return balances[address(arg1)]
}

function remove() payable {
    if address(sub_3751707cAddress) != msg.sender:
    selfdestruct(address(sub_3751707cAddress))
}

function _fallback() payable {
  stop
}

function getAddress(bytes32 arg1) payable {
    call address(stor1).0x2ade6c36 with:
         gas gas_remaining - 25050 wei
        args arg1
    require ext_call.success
    return ext_call.return_data[12 len 20]
}

function deposit(address arg1, uint256 arg2, bytes32 arg3, uint256 arg4) payable {
    if 0 == address(sub_3751707cAddress):
        return 0
    call address(stor1).0xa1add510 with:
         gas gas_remaining - 25050 wei
        args name, 0x87e7700500000000000000000000000000000000000000000000000000000 * 24 * 3600, msg.sender
    require ext_call.success
    if not ext_call.return_data[0]:
        return 0
    balances[address(arg1)] += arg2
    emit Transaction(arg4, arg2, arg3, 0, arg1);
    return 1
}

function withdraw(address arg1, uint256 arg2, bytes32 arg3, uint256 arg4) payable {
    if 0 == address(sub_3751707cAddress):
        return 0
    call address(stor1).0xa1add510 with:
         gas gas_remaining - 25050 wei
        args name, 0x87e7700500000000000000000000000000000000000000000000000000000 * 24 * 3600, msg.sender
    require ext_call.success
    if not ext_call.return_data[0]:
        return 0
    if balances[address(arg1)] < arg2:
        return 0
    call msg.sender with:
       value arg2 wei
         gas 0 wei
    balances[address(arg1)] -= arg2
    emit Transaction(arg4, arg2, arg3, arg1, 0);
    return 1
}

function setAmbiAddress(address arg1, bytes32 arg2) payable {
    if address(sub_3751707cAddress) != 0:
        if arg1 != address(sub_3751707cAddress):
            return 0
    call arg1.0x2ade6c36 with:
         gas gas_remaining - 25050 wei
        args arg2
    require ext_call.success
    if ext_call.return_data[12 len 20] != this.address:
        call arg1.0x76849376 with:
             gas gas_remaining - 25050 wei
            args arg2, this.address
        require ext_call.success
        if not ext_call.return_data[0]:
            return 0
    name = arg2
    uint256(stor0) = arg1 or Mask(96, 160, uint256(stor0))
    uint256(stor1) = arg1 or Mask(96, 160, uint256(stor1))
    return 1
}



}
