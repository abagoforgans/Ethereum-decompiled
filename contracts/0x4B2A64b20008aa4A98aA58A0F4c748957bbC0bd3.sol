contract main {


// =======================  Init code  ======================


#
#  - _fallback()
#


// =====================  Runtime code  =====================


address owner;
array of uint256 name;
array of uint256 symbol;
uint8 decimals;
uint256 totalSupply;
mapping of uint256 token_balance;
mapping of uint256 sub_4e61e2ed;
mapping of uint256 _pvn_token_balance;
mapping of uint256 allowance;
uint256 stor9;
mapping of uint8 stor15;
mapping of struct _transaction_by_row;
array of uint256 sub_a73c356e;
array of uint256 stor99;

function name() {
    return name[0 len name.length]
}

function token_balance(address arg1) {
    return token_balance[arg1]
}

function get_transaction_by_row(uint256 arg1) {
    require arg1 < sub_a73c356e.length
    require arg1 >= 0
    require arg1 < sub_a73c356e.length
    return _transaction_by_row[stor17[arg1]].field_0, 
           _transaction_by_row[stor17[arg1]].field_256,
           address(_transaction_by_row[stor17[arg1]].field_512),
           address(_transaction_by_row[stor17[arg1]].field_768),
           _transaction_by_row[stor17[arg1]].field_1024,
           _transaction_by_row[stor17[arg1]].field_1280,
           _transaction_by_row[stor17[arg1]].field_1536
}

function totalSupply() {
    return totalSupply
}

function is_transaction(bytes32 arg1) {
    return bool(uint8(_transaction_by_row[arg1].field_1792))
}

function decimals() {
    return decimals
}

function sub_4e61e2ed(?) {
    return sub_4e61e2ed[arg1]
}

function get_pvn_token_balance(address arg1) {
    return _pvn_token_balance[address(arg1)]
}

function owner() {
    return owner
}

function get_eth_balance(address arg1) {
    return sub_4e61e2ed[address(arg1)]
}

function symbol() {
    return symbol[0 len symbol.length]
}

function sub_a73c356e(?) {
    require arg1 < sub_a73c356e.length
    return sub_a73c356e[arg1]
}

function sub_b31cfefe(?) {
    return _pvn_token_balance[arg1]
}

function frozenAccount(address arg1) {
    return bool(stor15[arg1])
}

function get_token_balance(address arg1) {
    return token_balance[address(arg1)]
}

function get_transaction_count() {
    return sub_a73c356e.length
}

function allowance(address arg1, address arg2) {
    return allowance[arg1][arg2]
}

function greet_omar(uint256 arg1) {
    return stor[arg1 + 10][0 len stor[arg1 + 10].length]
}

function _fallback() payable {
    revert
}

function transferOwnership(address arg1) {
    require msg.sender == owner
    owner = arg1
}

function randomGen(uint256 arg1) {
    return (sha3(block.hash(block.number - 1), arg1) % 10)
}

function set_master_exchange_rate(uint256 arg1) {
    require msg.sender == owner
    stor9 = arg1
    return stor9
}

function approve(address arg1, uint256 arg2) {
    allowance[address(msg.sender)][address(arg1)] = arg2
    return 1
}

function freezeAccount(address arg1, bool arg2) {
    require msg.sender == owner
    stor15[address(arg1)] = uint8(arg2)
    emit FrozenFunds(address(arg1), arg2);
}

function make_hash(uint256 arg1, uint256 arg2, address arg3, address arg4, uint256 arg5, uint256 arg6) {
    return sha3(arg1, arg2, arg3, arg4, block.timestamp, arg5, arg6)
}

function burn(uint256 arg1) {
    require token_balance[address(msg.sender)] >= arg1
    token_balance[address(msg.sender)] -= arg1
    totalSupply -= arg1
    emit Burn(arg1, msg.sender);
    return 1
}

function mintToken(address arg1, uint256 arg2) {
    require msg.sender == owner
    token_balance[address(arg1)] += arg2
    totalSupply += arg2
    emit Transfer(arg2, 0, this.address);
    emit Transfer(arg2, this.address, arg1);
}

function burnFrom(address arg1, uint256 arg2) {
    require token_balance[address(arg1)] >= arg2
    require arg2 <= allowance[address(arg1)][address(msg.sender)]
    token_balance[address(arg1)] -= arg2
    allowance[address(arg1)][address(msg.sender)] -= arg2
    totalSupply -= arg2
    emit Burn(arg2, arg1);
    return 1
}

function transfer_token(address arg1, uint256 arg2) {
    require arg1
    require token_balance[address(msg.sender)] >= arg2
    require token_balance[address(arg1)] + arg2 > token_balance[address(arg1)]
    token_balance[address(msg.sender)] -= arg2
    token_balance[address(arg1)] += arg2
    emit Transfer(arg2, msg.sender, arg1);
    require token_balance[address(msg.sender)] + token_balance[address(arg1)] == token_balance[address(msg.sender)] + token_balance[address(arg1)]
}

function buy() payable {
    require msg.sender
    require token_balance[stor0] >= msg.value * stor9
    require token_balance[address(msg.sender)] + (msg.value * stor9) > token_balance[address(msg.sender)]
    require not stor15[stor0]
    require not stor15[address(msg.sender)]
    token_balance[stor0] += -1 * msg.value * stor9
    token_balance[address(msg.sender)] += msg.value * stor9
    emit Transfer((msg.value * stor9), owner, msg.sender);
    sub_4e61e2ed[address(msg.sender)] += msg.value
    token_balance[address(msg.sender)] += msg.value * stor9
}

function transfer_token_from(address arg1, address arg2, uint256 arg3) {
    require arg3 <= allowance[address(arg1)][address(msg.sender)]
    allowance[address(arg1)][address(msg.sender)] -= arg3
    require arg2
    require token_balance[address(arg1)] >= arg3
    require token_balance[address(arg2)] + arg3 > token_balance[address(arg2)]
    token_balance[address(arg1)] -= arg3
    token_balance[address(arg2)] += arg3
    emit Transfer(arg3, arg1, arg2);
    require token_balance[address(arg1)] + token_balance[address(arg2)] == token_balance[address(arg1)] + token_balance[address(arg2)]
    return 1
}

function sell(uint256 arg1) {
    require stor9
    require eth.balance(this.address) >= arg1 / stor9
    require owner
    require token_balance[address(msg.sender)] >= arg1
    require token_balance[stor0] + arg1 > token_balance[stor0]
    require not stor15[address(msg.sender)]
    require not stor15[stor0]
    token_balance[address(msg.sender)] -= arg1
    token_balance[stor0] += arg1
    emit Transfer(arg1, msg.sender, owner);
    require stor9
    call msg.sender with:
       value arg1 / stor9 wei
         gas 2300 * is_zero(value) wei
    require ext_call.success
    token_balance[address(msg.sender)] -= arg1
    require stor9
    sub_4e61e2ed[address(msg.sender)] -= arg1 / stor9
}

function sub_9152ffdc(?) {
    if arg5:
        require not uint8(_transaction_by_row[arg5].field_1792)
    require not uint8(_transaction_by_row[arg1][arg2][arg3][arg4][block.timestamp][stor9][block.timestamp].field_1792)
    require not arg1 * arg2
    if arg1 <= 0:
        require arg2 > 0
    require arg3
    require arg4
    if arg2 <= 0:
        if arg1 <= 0:
            _transaction_by_row[arg1][arg2][arg3][arg4][block.timestamp][stor9][block.timestamp].field_0 = arg1
            _transaction_by_row[arg1][arg2][arg3][arg4][block.timestamp][stor9][block.timestamp].field_256 = arg2
            address(_transaction_by_row[arg1][arg2][arg3][arg4][block.timestamp][stor9][block.timestamp].field_512) = arg3
            address(_transaction_by_row[arg1][arg2][arg3][arg4][block.timestamp][stor9][block.timestamp].field_768) = arg4
        else:
            if arg2:
                _transaction_by_row[arg1][arg2][arg3][arg4][block.timestamp][stor9][block.timestamp].field_0 = arg1
                _transaction_by_row[arg1][arg2][arg3][arg4][block.timestamp][stor9][block.timestamp].field_256 = arg2
                address(_transaction_by_row[arg1][arg2][arg3][arg4][block.timestamp][stor9][block.timestamp].field_512) = arg3
                address(_transaction_by_row[arg1][arg2][arg3][arg4][block.timestamp][stor9][block.timestamp].field_768) = arg4
            else:
                require _pvn_token_balance[address(msg.sender)] - arg1 > 0
                token_balance[address(arg3)] += arg1
                _pvn_token_balance[address(msg.sender)] -= arg1
                _transaction_by_row[arg1][arg2][arg3][arg4][block.timestamp][stor9][block.timestamp].field_0 = arg1
                _transaction_by_row[arg1][arg2][arg3][arg4][block.timestamp][stor9][block.timestamp].field_256 = arg2
                address(_transaction_by_row[arg1][arg2][arg3][arg4][block.timestamp][stor9][block.timestamp].field_512) = arg3
                address(_transaction_by_row[arg1][arg2][arg3][arg4][block.timestamp][stor9][block.timestamp].field_768) = msg.sender
    else:
        if arg1:
            if arg1 <= 0:
                _transaction_by_row[arg1][arg2][arg3][arg4][block.timestamp][stor9][block.timestamp].field_0 = arg1
                _transaction_by_row[arg1][arg2][arg3][arg4][block.timestamp][stor9][block.timestamp].field_256 = arg2
                address(_transaction_by_row[arg1][arg2][arg3][arg4][block.timestamp][stor9][block.timestamp].field_512) = arg3
                address(_transaction_by_row[arg1][arg2][arg3][arg4][block.timestamp][stor9][block.timestamp].field_768) = arg4
            else:
                if arg2:
                    _transaction_by_row[arg1][arg2][arg3][arg4][block.timestamp][stor9][block.timestamp].field_0 = arg1
                    _transaction_by_row[arg1][arg2][arg3][arg4][block.timestamp][stor9][block.timestamp].field_256 = arg2
                    address(_transaction_by_row[arg1][arg2][arg3][arg4][block.timestamp][stor9][block.timestamp].field_512) = arg3
                    address(_transaction_by_row[arg1][arg2][arg3][arg4][block.timestamp][stor9][block.timestamp].field_768) = arg4
                else:
                    require _pvn_token_balance[address(msg.sender)] - arg1 > 0
                    token_balance[address(arg3)] += arg1
                    _pvn_token_balance[address(msg.sender)] -= arg1
                    _transaction_by_row[arg1][arg2][arg3][arg4][block.timestamp][stor9][block.timestamp].field_0 = arg1
                    _transaction_by_row[arg1][arg2][arg3][arg4][block.timestamp][stor9][block.timestamp].field_256 = arg2
                    address(_transaction_by_row[arg1][arg2][arg3][arg4][block.timestamp][stor9][block.timestamp].field_512) = arg3
                    address(_transaction_by_row[arg1][arg2][arg3][arg4][block.timestamp][stor9][block.timestamp].field_768) = msg.sender
        else:
            require token_balance[address(msg.sender)] - arg2 > 0
            token_balance[address(msg.sender)] -= arg2
            _pvn_token_balance[address(arg4)] += arg2
            if arg1 <= 0:
                _transaction_by_row[arg1][arg2][arg3][arg4][block.timestamp][stor9][block.timestamp].field_0 = arg1
                _transaction_by_row[arg1][arg2][arg3][arg4][block.timestamp][stor9][block.timestamp].field_256 = arg2
                address(_transaction_by_row[arg1][arg2][arg3][arg4][block.timestamp][stor9][block.timestamp].field_512) = msg.sender
                address(_transaction_by_row[arg1][arg2][arg3][arg4][block.timestamp][stor9][block.timestamp].field_768) = arg4
            else:
                if arg2:
                    _transaction_by_row[arg1][arg2][arg3][arg4][block.timestamp][stor9][block.timestamp].field_0 = arg1
                    _transaction_by_row[arg1][arg2][arg3][arg4][block.timestamp][stor9][block.timestamp].field_256 = arg2
                    address(_transaction_by_row[arg1][arg2][arg3][arg4][block.timestamp][stor9][block.timestamp].field_512) = msg.sender
                    address(_transaction_by_row[arg1][arg2][arg3][arg4][block.timestamp][stor9][block.timestamp].field_768) = arg4
                else:
                    require _pvn_token_balance[address(msg.sender)] - arg1 > 0
                    token_balance[address(msg.sender)] += arg1
                    _pvn_token_balance[address(msg.sender)] -= arg1
                    _transaction_by_row[arg1][arg2][arg3][arg4][block.timestamp][stor9][block.timestamp].field_0 = arg1
                    _transaction_by_row[arg1][arg2][arg3][arg4][block.timestamp][stor9][block.timestamp].field_256 = arg2
                    address(_transaction_by_row[arg1][arg2][arg3][arg4][block.timestamp][stor9][block.timestamp].field_512) = msg.sender
                    address(_transaction_by_row[arg1][arg2][arg3][arg4][block.timestamp][stor9][block.timestamp].field_768) = msg.sender
    _transaction_by_row[arg1][arg2][arg3][arg4][block.timestamp][stor9][block.timestamp].field_1024 = stor9
    _transaction_by_row[arg1][arg2][arg3][arg4][block.timestamp][stor9][block.timestamp].field_1280 = block.timestamp
    _transaction_by_row[arg1][arg2][arg3][arg4][block.timestamp][stor9][block.timestamp].field_1536 = sha3(arg1, arg2, arg3, arg4, block.timestamp, stor9, block.timestamp)
    uint8(_transaction_by_row[arg1][arg2][arg3][arg4][block.timestamp][stor9][block.timestamp].field_1792) = 1
    sub_a73c356e.length++
    if not sub_a73c356e.length <= sub_a73c356e.length + 1:
        idx = sub_a73c356e.length + 1
        while sub_a73c356e.length > idx:
            sub_a73c356e[idx] = 0
            idx = idx + 1
            continue 
    sub_a73c356e[sub_a73c356e.length] = sha3(arg1, arg2, arg3, arg4, block.timestamp, stor9, block.timestamp)
    return sub_a73c356e.length
}



}
