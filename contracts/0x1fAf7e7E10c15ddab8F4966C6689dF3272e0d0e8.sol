contract main {




// =====================  Runtime code  =====================


const name = 'MoneyFold Japanese Yen'

const decimals = 0

const sub_824bd1f3(?) = sha3(Mask(24, 232, 'yes') >> 232)

const symbol = 'JPY'


uint256 totalSupply;
address owner_;
uint256 sub_6f5aa4db;
uint256 sub_543fa9eb;
uint256 sub_e36a92e8;
uint256 birthBlock_;
mapping of uint8 stor6;
mapping of uint8 stor7;
mapping of uint8 stor8;
mapping of uint256 allowed_;
mapping of uint256 balanceOf;
mapping of uint256 sub_68e800ca;
mapping of uint256 sub_e3bce00d;

function sub_05f5fc66(?) {
    return bool(stor6[arg1])
}

function totalSupply() {
    return totalSupply
}

function allowed_(address arg1, address arg2) {
    return allowed_[arg1][arg2]
}

function sub_543fa9eb(?) {
    return sub_543fa9eb
}

function sub_68e800ca(?) {
    return sub_68e800ca[arg1]
}

function birthBlock_() {
    return birthBlock_
}

function sub_6f5aa4db(?) {
    return sub_6f5aa4db
}

function balanceOf(address arg1) {
    return balanceOf[address(arg1)]
}

function sub_c457e56f(?) {
    return bool(stor8[arg1])
}

function sub_cefb6e20(?) {
    return bool(stor7[arg1])
}

function isWhitelistedUser(address arg1) {
    return bool(stor8[address(arg1)])
}

function allowance(address arg1, address arg2) {
    return allowed_[address(arg1)][address(arg2)]
}

function sub_e36a92e8(?) {
    return sub_e36a92e8
}

function sub_e3bce00d(?) {
    return sub_e3bce00d[arg1]
}

function owner_() {
    return owner_
}

function _fallback() payable {
    revert
}

function sub_85b5b14d(?) {
    if msg.sender == owner_:
        sub_e36a92e8 = arg1
        return 1
    emit LogErrorString(Array(len=59, data='msg.sender != owner_, MoneyFoldJ', 'PY.setMinWithdrawalAmount()', Mask(216, -256, 'msg.sender != owner_, MoneyFoldJ', 'PY.setMinWithdrawalAmount()') << 256));
    return 0
}

function removeOperator(address arg1) {
    if owner_ != msg.sender:
        emit LogErrorString(Array(len=51, data='msg.sender != owner_, MoneyFoldJ', 'PY.removeOperator()', Mask(152, -256, 'msg.sender != owner_, MoneyFoldJ', 'PY.removeOperator()') << 256));
        return 0
    if not stor7[address(arg1)]:
        emit LogErrorString(Array(len=55, data='Operator is not approved, MoneyF', 'oldJPY.removeOperator()', Mask(184, -256, 'Operator is not approved, MoneyF', 'oldJPY.removeOperator()') << 256));
        return 0
    stor7[address(arg1)] = 0
    emit LogOperatorRemoved(arg1);
    return 1
}

function removeWhitelister(address arg1) {
    if owner_ != msg.sender:
        emit LogErrorString(Array(len=54, data='msg.sender != owner_, MoneyFoldJ', 'PY.removeWhitelister()', Mask(176, -256, 'msg.sender != owner_, MoneyFoldJ', 'PY.removeWhitelister()') << 256));
        return 0
    if not stor6[address(arg1)]:
        emit LogErrorString(Array(len=61, data='Whitelister is not approved, Mon', 'eyFoldJPY.removeWhitelister()', Mask(232, -256, 'Whitelister is not approved, Mon', 'eyFoldJPY.removeWhitelister()') << 256));
        return 0
    stor6[address(arg1)] = 0
    emit 0x8af52f2a: arg1
    return 1
}

function addUserToWhitelist(address arg1) {
    if not stor6[msg.sender]:
        emit LogErrorString(Array(len=76, data='msg.sender is not an approved wh', 'itelister, MoneyFoldJPY.addUserT', 'oWhitelist()' >> 256, Mask(96, -512, 'msg.sender is not an approved wh', 'itelister, MoneyFoldJPY.addUserT', 'oWhitelist()') << 512));
        return 0
    if not arg1:
        emit LogErrorString('Cannot add user at address(0), MoneyFoldJPY.addUserToWhitelist()');
        return 0
    if stor8[address(arg1)]:
        emit LogErrorString(Array(len=62, data='User is already whitelisted, Mon', 'eyFoldJPY.addUserToWhitelist()', Mask(240, -256, 'User is already whitelisted, Mon', 'eyFoldJPY.addUserToWhitelist()') << 256));
        return 0
    stor8[address(arg1)] = 1
    emit 0x979b05cf: arg1
    return 1
}

function changeOwner(address arg1) {
    if owner_ != msg.sender:
        emit LogErrorString(Array(len=48, data='msg.sender != owner_, MoneyFoldJ', 'PY.changeOwner()', Mask(128, -256, 'msg.sender != owner_, MoneyFoldJ', 'PY.changeOwner()') << 256));
        return 0
    if not arg1:
        emit LogErrorString(Array(len=61, data='Cannot change owner to address(0', '), MoneyFoldJPY.changeOwner()', Mask(232, -256, 'Cannot change owner to address(0', '), MoneyFoldJPY.changeOwner()') << 256));
        return 0
    if owner_ == arg1:
        emit LogErrorString(Array(len=55, data='Requested owner already set, Mon', 'eyFoldJPY.changeOwner()', Mask(184, -256, 'Requested owner already set, Mon', 'eyFoldJPY.changeOwner()') << 256));
        return 0
    owner_ = arg1
    emit 0xcb8ef767: arg1
    return 1
}

function addOperator(address arg1) {
    if owner_ != msg.sender:
        emit LogErrorString(Array(len=48, data='msg.sender != owner_, MoneyFoldJ', 'PY.addOperator()', Mask(128, -256, 'msg.sender != owner_, MoneyFoldJ', 'PY.addOperator()') << 256));
        return 0
    if not arg1:
        emit LogErrorString(Array(len=65, data='Cannot approve operator at addre', 'ss(0), MoneyFoldJPY.addOperator(', ')' >> 256, Mask(8, -512, 'Cannot approve operator at addre', 'ss(0), MoneyFoldJPY.addOperator(', ')') << 512));
        return 0
    if stor7[address(arg1)]:
        emit LogErrorString(Array(len=56, data='Operator is already approved, Mo', 'neyFoldJPY.addOperator()', Mask(192, -256, 'Operator is already approved, Mo', 'neyFoldJPY.addOperator()') << 256));
        return 0
    stor7[address(arg1)] = 1
    emit 0x1a1ed362: arg1
    return 1
}

function approveWithdrawal(address arg1) {
    if not stor7[msg.sender]:
        emit LogErrorString(Array(len=72, data='msg.sender is not an approved op', 'erator, MoneyFoldJPY.approveWith', 'drawal()' >> 256, Mask(64, -512, 'msg.sender is not an approved op', 'erator, MoneyFoldJPY.approveWith', 'drawal()') << 512));
        return 0
    if sub_e3bce00d[address(arg1)] <= 0:
        emit LogErrorString('Pending withdrawal amount <= 0, MoneyFoldJPY.approveWithdrawal()');
        return 0
    sub_e3bce00d[address(arg1)] = 0
    require sub_e3bce00d[address(arg1)] <= totalSupply
    totalSupply -= sub_e3bce00d[address(arg1)]
    require sub_e3bce00d[address(arg1)] + sub_6f5aa4db >= sub_6f5aa4db
    sub_6f5aa4db += sub_e3bce00d[address(arg1)]
    emit 0xaa4c30af: address(arg1), sub_e3bce00d[address(arg1)]
    emit Transfer(sub_e3bce00d[address(arg1)], arg1, 0);
    return 1
}

function addWhitelister(address arg1) {
    if owner_ != msg.sender:
        emit LogErrorString(Array(len=51, data='msg.sender != owner_, MoneyFoldJ', 'PY.addWhitelister()', Mask(152, -256, 'msg.sender != owner_, MoneyFoldJ', 'PY.addWhitelister()') << 256));
        return 0
    if not arg1:
        emit LogErrorString(Array(len=71, data='Cannot approve whitelister at ad', 'dress(0), MoneyFoldJPY.addWhitel', 'ister()' >> 256, Mask(56, -512, 'Cannot approve whitelister at ad', 'dress(0), MoneyFoldJPY.addWhitel', 'ister()') << 512));
        return 0
    if stor6[address(arg1)]:
        emit LogErrorString(Array(len=62, data='Whitelister is already approved,', ' MoneyFoldJPY.addWhitelister()', Mask(240, -256, 'Whitelister is already approved,', ' MoneyFoldJPY.addWhitelister()') << 256));
        return 0
    stor6[address(arg1)] = 1
    emit 0xcc3207f8: arg1
    return 1
}

function removeUserFromWhitelist(address arg1) {
    if not stor6[msg.sender]:
        emit LogErrorString(Array(len=81, data='msg.sender is not an approved wh', 'itelister, MoneyFoldJPY.removeUs', 'erFromWhitelist()' >> 256, Mask(136, -512, 'msg.sender is not an approved wh', 'itelister, MoneyFoldJPY.removeUs', 'erFromWhitelist()') << 512));
        return 0
    if not stor8[address(arg1)]:
        emit LogErrorString(Array(len=63, data='User is not whitelisted, MoneyFo', 'ldJPY.removeUserFromWhitelist()', Mask(248, -256, 'User is not whitelisted, MoneyFo', 'ldJPY.removeUserFromWhitelist()') << 256));
        return 0
    stor8[address(arg1)] = 0
    if balanceOf[address(arg1)] > 0:
        require balanceOf[address(arg1)] + sub_68e800ca[address(arg1)] >= sub_68e800ca[address(arg1)]
        sub_68e800ca[address(arg1)] += balanceOf[address(arg1)]
        balanceOf[address(arg1)] = 0
        emit 0xfe1697e4: arg1
    emit 0x20ed792c: arg1
    return 1
}

function sub_bdc4be35(?) {
    if not stor7[msg.sender]:
        emit LogErrorString(Array(len=71, data='msg.sender is not an approved op', 'erator, MoneyFoldJPY.burnLockedT', 'okens()' >> 256, Mask(56, -512, 'msg.sender is not an approved op', 'erator, MoneyFoldJPY.burnLockedT', 'okens()') << 512));
        return 0
    if sub_68e800ca[address(arg1)] <= 0:
        emit LogErrorString(Array(len=68, data='User does not have any locked fu', 'nds, MoneyFoldJPY.burnLockedToke', 'ns()' >> 256, Mask(32, -512, 'User does not have any locked fu', 'nds, MoneyFoldJPY.burnLockedToke', 'ns()') << 512));
        return 0
    require sub_68e800ca[address(arg1)] <= totalSupply
    totalSupply -= sub_68e800ca[address(arg1)]
    sub_68e800ca[address(arg1)] = 0
    require sub_68e800ca[address(arg1)] + sub_543fa9eb >= sub_543fa9eb
    sub_543fa9eb += sub_68e800ca[address(arg1)]
    emit 0xcd450ec2: address(arg1), sub_68e800ca[address(arg1)]
    emit Transfer(sub_68e800ca[address(arg1)], arg1, 0);
    return 1
}

function approve(address arg1, uint256 arg2) {
    if arg2 == allowed_[msg.sender][address(arg1)]:
        emit LogErrorString(Array(len=70, data='Requested approval amount is alr', 'eady in effect, MoneyFoldJPY.app', 'rove()' >> 256, Mask(48, -512, 'Requested approval amount is alr', 'eady in effect, MoneyFoldJPY.app', 'rove()') << 512));
        return 0
    if not stor8[msg.sender]:
        emit LogErrorString(Array(len=53, data='msg.sender is not whitelisted, M', 'oneyFoldJPY.approve()', Mask(168, -256, 'msg.sender is not whitelisted, M', 'oneyFoldJPY.approve()') << 256));
        return 0
    if not stor8[address(arg1)]:
        emit LogErrorString(Array(len=50, data='Spender is not whitelisted, Mone', 'yFoldJPY.approve()', Mask(144, -256, 'Spender is not whitelisted, Mone', 'yFoldJPY.approve()') << 256));
        return 0
    if arg2 > balanceOf[msg.sender]:
        emit LogErrorString(Array(len=61, data='Amount is greater than sender ba', 'lance, MoneyFoldJPY.approve()', Mask(232, -256, 'Amount is greater than sender ba', 'lance, MoneyFoldJPY.approve()') << 256));
        return 0
    allowed_[msg.sender][address(arg1)] = arg2
    emit Approval(arg2, msg.sender, arg1);
    return 1
}

function sub_f6661518(?) {
    if not stor7[msg.sender]:
        emit LogErrorString(Array(len=75, data='msg.sender is not an approved op', 'erator, MoneyFoldJPY.allocateLoc', 'kedTokens()' >> 256, Mask(88, -512, 'msg.sender is not an approved op', 'erator, MoneyFoldJPY.allocateLoc', 'kedTokens()') << 512));
        return 0
    if sub_68e800ca[address(arg1)] <= 0:
        emit LogErrorString(Array(len=73, data='User does not have any locked to', 'kens, MoneyFoldJPY.allocateLocke', 'dTokens()' >> 256, Mask(72, -512, 'User does not have any locked to', 'kens, MoneyFoldJPY.allocateLocke', 'dTokens()') << 512));
        return 0
    if not stor8[address(arg2)]:
        emit LogErrorString(Array(len=66, data='To address is not whitelisted, M', 'oneyFoldJPY.allocateLockedTokens', '()' >> 256, Mask(16, -512, 'To address is not whitelisted, M', 'oneyFoldJPY.allocateLockedTokens', '()') << 512));
        return 0
    require sub_68e800ca[address(arg1)] + balanceOf[address(arg2)] >= balanceOf[address(arg2)]
    balanceOf[address(arg2)] += sub_68e800ca[address(arg1)]
    sub_68e800ca[address(arg1)] = 0
    emit 0x6ef3b459: address(arg1), address(arg2), sub_68e800ca[address(arg1)]
    emit Transfer(sub_68e800ca[address(arg1)], arg1, arg2);
    return 1
}

function mint(address arg1, uint256 arg2) {
    if not stor7[msg.sender]:
        emit LogErrorString(Array(len=59, data='msg.sender is not an approved op', 'erator, MoneyFoldJPY.mint()', Mask(216, -256, 'msg.sender is not an approved op', 'erator, MoneyFoldJPY.mint()') << 256));
        return 0
    if not arg1:
        emit LogErrorString(Array(len=53, data='Cannot mint tokens to address(0)', ', MoneyFoldJPY.mint()', Mask(168, -256, 'Cannot mint tokens to address(0)', ', MoneyFoldJPY.mint()') << 256));
        return 0
    if arg2 <= 0:
        emit LogErrorString(Array(len=54, data='Cannot mint 0 tokens, amount <= ', '0, MoneyFoldJPY.mint()', Mask(176, -256, 'Cannot mint 0 tokens, amount <= ', '0, MoneyFoldJPY.mint()') << 256));
        return 0
    if not stor8[address(arg1)]:
        emit LogErrorString(Array(len=49, data='Recipient is not whitelisted, Mo', 'neyFoldJPY.mint()', Mask(136, -256, 'Recipient is not whitelisted, Mo', 'neyFoldJPY.mint()') << 256));
        return 0
    require arg2 + totalSupply >= totalSupply
    totalSupply += arg2
    require arg2 + balanceOf[address(arg1)] >= balanceOf[address(arg1)]
    balanceOf[address(arg1)] += arg2
    emit 0x8c28cce0: address(arg1), arg2, arg1
    emit Transfer(arg2, 0, arg1);
    return 1
}

function transfer(address arg1, uint256 arg2) {
    if not arg1:
        emit LogErrorString(Array(len=54, data='Cannot transfer to address(0), M', 'oneyFoldJPY.transfer()', Mask(176, -256, 'Cannot transfer to address(0), M', 'oneyFoldJPY.transfer()') << 256));
        return 0
    if arg2 <= 0:
        emit LogErrorString(Array(len=52, data='Cannot transfer amount of 0, Mon', 'eyFoldJPY.transfer()', Mask(160, -256, 'Cannot transfer amount of 0, Mon', 'eyFoldJPY.transfer()') << 256));
        return 0
    if not stor8[msg.sender]:
        emit LogErrorString(Array(len=50, data='Sender is not whitelisted, Money', 'FoldJPY.transfer()', Mask(144, -256, 'Sender is not whitelisted, Money', 'FoldJPY.transfer()') << 256));
        return 0
    if not stor8[address(arg1)]:
        emit LogErrorString(Array(len=53, data='Recipient is not whitelisted, Mo', 'neyFoldJPY.transfer()', Mask(168, -256, 'Recipient is not whitelisted, Mo', 'neyFoldJPY.transfer()') << 256));
        return 0
    if arg2 > balanceOf[msg.sender]:
        emit LogErrorString(Array(len=60, data='Sender balance < amount to trans', 'fer, MoneyFoldJPY.transfer()', Mask(224, -256, 'Sender balance < amount to trans', 'fer, MoneyFoldJPY.transfer()') << 256));
        return 0
    require arg2 <= balanceOf[msg.sender]
    balanceOf[msg.sender] -= arg2
    require arg2 + balanceOf[arg1] >= balanceOf[arg1]
    balanceOf[address(arg1)] = arg2 + balanceOf[arg1]
    emit Transfer(arg2, msg.sender, arg1);
    return 1
}

function requestWithdrawal(uint256 arg1) {
    if arg1 <= 0:
        emit LogErrorString(Array(len=61, data='Cannot withdraw amount of 0, Mon', 'eyFoldJPY.requestWithdrawal()', Mask(232, -256, 'Cannot withdraw amount of 0, Mon', 'eyFoldJPY.requestWithdrawal()') << 256));
        return 0
    if not stor8[msg.sender]:
        emit LogErrorString(Array(len=59, data='Sender is not whitelisted, Money', 'FoldJPY.requestWithdrawal()', Mask(216, -256, 'Sender is not whitelisted, Money', 'FoldJPY.requestWithdrawal()') << 256));
        return 0
    if arg1 > balanceOf[msg.sender]:
        emit LogErrorString(Array(len=69, data='Sender balance < amount to withd', 'raw, MoneyFoldJPY.requestWithdra', 'wal()' >> 256, Mask(40, -512, 'Sender balance < amount to withd', 'raw, MoneyFoldJPY.requestWithdra', 'wal()') << 512));
        return 0
    if sub_e3bce00d[msg.sender]:
        emit LogErrorString(Array(len=70, data='Sender has an outstanding withdr', 'awal, MoneyFoldJPY.requestWithdr', 'awal()' >> 256, Mask(48, -512, 'Sender has an outstanding withdr', 'awal, MoneyFoldJPY.requestWithdr', 'awal()') << 512));
        return 0
    if arg1 < sub_e36a92e8:
        emit LogErrorString(Array(len=68, data='amount < Minimum withdrawal amou', 'nt, MoneyFoldJPY.requestWithdraw', 'al()' >> 256, Mask(32, -512, 'amount < Minimum withdrawal amou', 'nt, MoneyFoldJPY.requestWithdraw', 'al()') << 512));
        return 0
    require arg1 <= balanceOf[msg.sender]
    balanceOf[msg.sender] -= arg1
    sub_e3bce00d[msg.sender] = arg1
    emit 0x7c76bbdd: msg.sender, arg1
    return 1
}

function transferFrom(address arg1, address arg2, uint256 arg3) {
    if arg3 <= 0:
        emit LogErrorString(Array(len=56, data='Cannot transfer amount <= 0, Mon', 'eyFoldJPY.transferFrom()', Mask(192, -256, 'Cannot transfer amount <= 0, Mon', 'eyFoldJPY.transferFrom()') << 256));
        return 0
    if not stor8[address(arg1)]:
        emit LogErrorString(Array(len=60, data='From account is not whitelisted,', ' MoneyFoldJPY.transferFrom()', Mask(224, -256, 'From account is not whitelisted,', ' MoneyFoldJPY.transferFrom()') << 256));
        return 0
    if not stor8[address(arg2)]:
        emit LogErrorString(Array(len=58, data='To account is not whitelisted, M', 'oneyFoldJPY.transferFrom()', Mask(208, -256, 'To account is not whitelisted, M', 'oneyFoldJPY.transferFrom()') << 256));
        return 0
    if not stor8[msg.sender]:
        emit LogErrorString(Array(len=58, data='msg.sender is not whitelisted, M', 'oneyFoldJPY.transferFrom()', Mask(208, -256, 'msg.sender is not whitelisted, M', 'oneyFoldJPY.transferFrom()') << 256));
        return 0
    if arg3 > balanceOf[address(arg1)]:
        emit LogErrorString(Array(len=69, data='From account has an insufficient', ' balance, MoneyFoldJPY.transferF', 'rom()' >> 256, Mask(40, -512, 'From account has an insufficient', ' balance, MoneyFoldJPY.transferF', 'rom()') << 512));
        return 0
    if arg3 > allowed_[address(arg1)][msg.sender]:
        emit LogErrorString(Array(len=66, data='msg.sender has insufficient allo', 'wance, MoneyFoldJPY.transferFrom', '()' >> 256, Mask(16, -512, 'msg.sender has insufficient allo', 'wance, MoneyFoldJPY.transferFrom', '()') << 512));
        return 0
    require arg3 <= balanceOf[address(arg1)]
    balanceOf[address(arg1)] -= arg3
    require arg3 <= allowed_[address(arg1)][msg.sender]
    allowed_[address(arg1)][msg.sender] -= arg3
    require arg3 + balanceOf[address(arg2)] >= balanceOf[address(arg2)]
    balanceOf[address(arg2)] += arg3
    emit Transfer(arg3, arg1, arg2);
    return 1
}



}
