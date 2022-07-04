contract main {




// =====================  Runtime code  =====================


address owner;
mapping of uint8 stor1;
uint8 stor2;
mapping of struct tokens;
array of address sub_ea41fb1a;
address sub_5fd295d7Address;

function isPauser(address arg1) {
    require calldata.size - 4 >= 32
    require arg1
    return bool(stor1[address(arg1)])
}

function paused() {
    return bool(stor2)
}

function sub_5fd295d7(?) {
    return sub_5fd295d7Address
}

function getTokenCount() {
    return sub_ea41fb1a.length
}

function owner() {
    return owner
}

function tokens(address arg1) {
    require calldata.size - 4 >= 32
    return tokens[arg1].field_0, 
           tokens[arg1].field_256,
           tokens[arg1].field_512,
           tokens[arg1].field_768,
           tokens[arg1].field_1024,
           tokens[arg1].field_1280
}

function sub_ea41fb1a(?) {
    require calldata.size - 4 >= 32
    require arg1 < sub_ea41fb1a.length
    return address(sub_ea41fb1a[arg1])
}

function _fallback() payable {
  stop
}

function isOwner() {
    return (msg.sender == owner)
}

function renounceOwnership() {
    require msg.sender == owner
    emit OwnershipTransferred(owner, 0);
    owner = 0
}

function unpause() {
    require msg.sender
    require stor1[address(msg.sender)]
    require stor2
    stor2 = 0
    emit Unpaused(msg.sender);
}

function pause() {
    require msg.sender
    require stor1[address(msg.sender)]
    require not stor2
    stor2 = 1
    emit Paused(msg.sender);
}

function renouncePauser() {
    require msg.sender
    require stor1[address(msg.sender)]
    stor1[address(msg.sender)] = 0
    emit PauserRemoved(msg.sender);
}

function transferOwnership(address arg1) {
    require calldata.size - 4 >= 32
    require msg.sender == owner
    require arg1
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function addPauser(address arg1) {
    require calldata.size - 4 >= 32
    require msg.sender
    require stor1[address(msg.sender)]
    require arg1
    require not stor1[address(arg1)]
    stor1[address(arg1)] = 1
    emit PauserAdded(arg1);
}

function sub_56126f21(?) {
    require calldata.size - 4 >= 160
    require msg.sender == owner
    if not tokens[address(arg1)].field_256:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'The token is not a supported token.'
    tokens[address(arg1)].field_256 = arg1
    tokens[address(arg1)].field_512 = arg2
    tokens[address(arg1)].field_768 = arg3
    tokens[address(arg1)].field_1024 = arg4
    tokens[address(arg1)].field_1280 = arg5
    return 1
}

function withdraw(address arg1) payable {
    require calldata.size - 4 >= 32
    require msg.sender == owner
    require not stor2
    if not arg1:
        revert with 0, 'The payee address is not set.'
    if not msg.value:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    'The amount of value accompanying the transaction is zero.'
    call arg1 with:
       value eth.balance(this.address) wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function sub_5d70a237(?) {
    require calldata.size - 4 >= 160
    require msg.sender == owner
    if tokens[address(arg1)].field_256:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'The token already exists in the records.'
    sub_ea41fb1a.length++
    address(sub_ea41fb1a[sub_ea41fb1a.length]) = arg1
    tokens[address(arg1)].field_0 = sub_ea41fb1a.length
    tokens[address(arg1)].field_256 = arg1
    tokens[address(arg1)].field_512 = arg2
    tokens[address(arg1)].field_768 = arg3
    tokens[address(arg1)].field_1024 = arg4
    tokens[address(arg1)].field_1280 = arg5
    return 1
}

function removeToken(address arg1) {
    require calldata.size - 4 >= 32
    require msg.sender == owner
    if not tokens[address(arg1)].field_256:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'The token is not a supported token.'
    require sub_ea41fb1a.length - 1 < sub_ea41fb1a.length
    require tokens[address(arg1)].field_0 < sub_ea41fb1a.length
    address(sub_ea41fb1a[stor3[address(arg1)].field_0]) = address(sub_ea41fb1a[sub_ea41fb1a.length])
    tokens[address(stor4[stor4.length])].field_0 = tokens[address(arg1)].field_0
    sub_ea41fb1a.length--
    if sub_ea41fb1a.length > sub_ea41fb1a.length - 1:
        idx = sub_ea41fb1a.length - 1
        while sub_ea41fb1a.length > idx:
            uint256(sub_ea41fb1a[idx]) = 0
            idx = idx + 1
            continue 
    tokens[address(arg1)].field_0 = 0
    tokens[address(arg1)].field_256 = 0
    tokens[address(arg1)].field_512 = 0
    tokens[address(arg1)].field_768 = 0
    tokens[address(arg1)].field_1024 = 0
    tokens[address(arg1)].field_1280 = 0
    return 1
}



}
