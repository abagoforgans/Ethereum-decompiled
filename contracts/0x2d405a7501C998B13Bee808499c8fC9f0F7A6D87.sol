contract main {


// =======================  Init code  ======================


const _fallback = code.data[18 len 2375]




// =====================  Runtime code  =====================


address stor0;
uint256 stor0;
uint256 name;
mapping of uint8 stor2;
mapping of uint8 stor3;

function name() payable {
    return name
}

function hasAccess(address arg1) payable {
    return bool(stor2[arg1])
}

function approved(address arg1) payable {
    return bool(stor3[arg1])
}

function remove() payable {
    if not address(stor0):
    call address(stor0).hasRelation(bytes32 rg1, bytes32 rg2, address rg3) with:
         gas gas_remaining - 25050 wei
        args name, 'owner', msg.sender
    require ext_call.success
    if not ext_call.return_data[0]:
    selfdestruct(msg.sender)
}

function _fallback() payable {
  stop
}

function deposit() payable {
    if msg.value <= 0:
        return 0
    return 1
}

function depositWithReference(string arg1) payable {
    if msg.value > 0:
        emit Deposit(msg.value, Array(len=arg1.length, data=arg1[all]), msg.sender);
    return 1
}

function getAddress(bytes32 arg1) payable {
    call address(stor0).getNodeAddress(bytes32 rg1) with:
         gas gas_remaining - 25050 wei
        args arg1
    require ext_call.success
    return ext_call.return_data[12 len 20]
}

function withdraw(address arg1, uint256 arg2) payable {
    if not stor2[address(msg.sender)]:
        return 0
    if not stor3[address(arg1)]:
        return 0
    call arg1 with:
       value arg2 wei
         gas 0 wei
    return bool(ext_call.success)
}

function withdrawWithReference(address arg1, uint256 arg2, string arg3) payable {
    if not stor2[address(msg.sender)]:
        return 0
    if not stor3[address(arg1)]:
        return 0
    call arg1 with:
       value arg2 wei
         gas 0 wei
    if not ext_call.success:
        return 0
    emit Withdrawal(arg2, Array(len=arg3.length, data=arg3[all]), msg.sender, arg1);
    return 1
}

function deny(address arg1) payable {
    if 0 == address(stor0):
        return 0
    call address(stor0).hasRelation(bytes32 rg1, bytes32 rg2, address rg3) with:
         gas gas_remaining - 25050 wei
        args name, 0x617070726f766572000000000000000000000000000000000000000000000000, msg.sender
    require ext_call.success
    if not ext_call.return_data[0]:
        return 0
    stor3[address(arg1)] = 0
    return 1
}

function approve(address arg1) payable {
    if 0 == address(stor0):
        return 0
    call address(stor0).hasRelation(bytes32 rg1, bytes32 rg2, address rg3) with:
         gas gas_remaining - 25050 wei
        args name, 0x617070726f766572000000000000000000000000000000000000000000000000, msg.sender
    require ext_call.success
    if not ext_call.return_data[0]:
        return 0
    stor3[address(arg1)] = 1
    return 1
}

function addAddress(address arg1) payable {
    if 0 == address(stor0):
        return 0
    call address(stor0).hasRelation(bytes32 rg1, bytes32 rg2, address rg3) with:
         gas gas_remaining - 25050 wei
        args name, 0x61646d696e000000000000000000000000000000000000000000000000000000, msg.sender
    require ext_call.success
    if not ext_call.return_data[0]:
        return 0
    stor2[address(arg1)] = 1
    return 1
}

function removeAddress(address arg1) payable {
    if 0 == address(stor0):
        return 0
    call address(stor0).hasRelation(bytes32 rg1, bytes32 rg2, address rg3) with:
         gas gas_remaining - 25050 wei
        args name, 0x61646d696e000000000000000000000000000000000000000000000000000000, msg.sender
    require ext_call.success
    if not ext_call.return_data[0]:
        return 0
    stor2[address(arg1)] = 0
    return 1
}

function setAmbiAddress(address arg1, bytes32 arg2) payable {
    if address(stor0) != 0:
        return 0
    call arg1.getNodeAddress(bytes32 rg1) with:
         gas gas_remaining - 25050 wei
        args arg2
    require ext_call.success
    if ext_call.return_data[12 len 20] != this.address:
        call arg1.addNode(bytes32 rg1, address rg2) with:
             gas gas_remaining - 25050 wei
            args arg2, this.address
        require ext_call.success
        if not ext_call.return_data[0]:
            return 0
    name = arg2
    uint256(stor0) = arg1 or Mask(96, 160, uint256(stor0))
    return 1
}



}
