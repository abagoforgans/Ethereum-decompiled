contract main {


// =======================  Init code  ======================


const _fallback = code.data[18 len 2574]




// =====================  Runtime code  =====================


address stor0;
uint256 stor0;
uint256 name;
mapping of uint256 subscriptions;
mapping of uint8 statuses;

function name() payable {
    return name
}

function statuses(bytes32 arg1) payable {
    return uint8(statuses[arg1])
}

function subscriptions(address arg1) payable {
    return subscriptions[arg1]
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

function deposit() payable {
    if msg.value > 0:
        emit Deposit(address rg1, uint256 rg2, string rg3):
                     msg.value,
                     64,
                     0,
                     msg.sender,
    return 1
}

function _fallback() payable {
    if msg.value > 0:
        emit Deposit(address rg1, uint256 rg2, string rg3):
                     msg.value,
                     64,
                     0,
                     msg.sender,
    return 1
}

function withdraw(address arg1, uint256 arg2) payable {
    if not uint8(statuses[stor2[address(msg.sender)]]):
        return 0
    call arg1 with:
       value arg2 wei
         gas 0 wei
    if not ext_call.success:
        return 0
    emit 0xae7443dd: arg2, 64, 0, msg.sender, arg1, subscriptions[address(msg.sender)]
    return 1
}

function withdrawWithReference(address arg1, uint256 arg2, string arg3) payable {
    if not uint8(statuses[stor2[address(msg.sender)]]):
        return 0
    call arg1 with:
       value arg2 wei
         gas 0 wei
    if not ext_call.success:
        return 0
    emit 0xae7443dd: arg2, Array(len=arg3.length, data=arg3[all]), msg.sender, arg1, subscriptions[address(msg.sender)]
    return 1
}

function freeze(bytes32 arg1) payable {
    if 0 == address(stor0):
        return 0
    call address(stor0).hasRelation(bytes32 rg1, bytes32 rg2, address rg3) with:
         gas gas_remaining - 25050 wei
        args name, 0x61646d696e000000000000000000000000000000000000000000000000000000, msg.sender
    require ext_call.success
    if not ext_call.return_data[0]:
        return 0
    uint8(statuses[arg1]) = 0
    return 1
}

function unFreeze(bytes32 arg1) payable {
    if 0 == address(stor0):
        return 0
    call address(stor0).hasRelation(bytes32 rg1, bytes32 rg2, address rg3) with:
         gas gas_remaining - 25050 wei
        args name, 0x61646d696e000000000000000000000000000000000000000000000000000000, msg.sender
    require ext_call.success
    if not ext_call.return_data[0]:
        return 0
    uint8(statuses[arg1]) = 1
    return 1
}

function unsubscribe(address arg1) payable {
    if 0 == address(stor0):
        return 0
    call address(stor0).hasRelation(bytes32 rg1, bytes32 rg2, address rg3) with:
         gas gas_remaining - 25050 wei
        args name, 0x61646d696e000000000000000000000000000000000000000000000000000000, msg.sender
    require ext_call.success
    if not ext_call.return_data[0]:
        return 0
    if not subscriptions[address(arg1)]:
        return 0
    subscriptions[address(arg1)] = 0
    return 1
}

function setSubscriptionStatus(bool arg1, bytes32 arg2) payable {
    if 0 == address(stor0):
        return 0
    call address(stor0).hasRelation(bytes32 rg1, bytes32 rg2, address rg3) with:
         gas gas_remaining - 25050 wei
        args name, 0x61646d696e000000000000000000000000000000000000000000000000000000, msg.sender
    require ext_call.success
    if not ext_call.return_data[0]:
        return 0
    uint256(statuses[arg2]) = arg1 or Mask(248, 8, uint256(statuses[arg2]))
    return 1
}

function subscribe(address arg1, bytes32 arg2) payable {
    if 0 == address(stor0):
        return 0
    call address(stor0).hasRelation(bytes32 rg1, bytes32 rg2, address rg3) with:
         gas gas_remaining - 25050 wei
        args name, 0x61646d696e000000000000000000000000000000000000000000000000000000, msg.sender
    require ext_call.success
    if not ext_call.return_data[0]:
        return 0
    if subscriptions[address(arg1)]:
        return 0
    subscriptions[address(arg1)] = arg2
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

function withdrawBySubscription(address arg1, uint256 arg2, bytes32 arg3, string arg4) payable {
    if 0 == address(stor0):
        return 0
    call address(stor0).hasRelation(bytes32 rg1, bytes32 rg2, address rg3) with:
         gas gas_remaining - 25050 wei
        args name, 'faucet', msg.sender
    require ext_call.success
    if not ext_call.return_data[0]:
        return 0
    if not uint8(statuses[arg3]):
        return 0
    call arg1 with:
       value arg2 wei
         gas 0 wei
    if not ext_call.success:
        return 0
    emit 0xae7443dd: arg2, Array(len=arg4.length, data=arg4[all]), msg.sender, arg1, arg3
    return 1
}



}
