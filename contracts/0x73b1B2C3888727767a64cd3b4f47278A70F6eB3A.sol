contract main {




// =====================  Runtime code  =====================


const sub_eeed847b(?) = 10^18


uint256 _totalSupply;
mapping of uint256 _balanceOf;
mapping of uint256 _allowance;
address owner;
uint8 stor4; offset 160
uint128 stor4; offset 160
address newOwner;
address sub_17dd84d0Address;
address delegateAddress;
array of uint256 name;
array of uint256 symbol;
uint8 decimals;
mapping of uint8 stor10;
mapping of uint8 stor11;
mapping of uint8 stor12;
mapping of uint8 stor13;
uint256 burnMin;
uint256 burnMax;
uint128 transferFeeNumerator;
uint128 transferFeeDenominator; offset 80
uint128 mintFeeNumerator; offset 160
uint128 mintFeeDenominator;
uint256 mintFeeFlat;
uint128 burnFeeNumerator;
uint128 burnFeeDenominator; offset 80
uint256 burnFeeFlat;
address stakerAddress;

function burnMin() {
    return burnMin
}

function name() {
    return name[0 len name.length]
}

function sub_0b803bb7(?) {
    return bool(stor10[arg1])
}

function burnFeeFlat() {
    return burnFeeFlat
}

function sub_17dd84d0(?) {
    return sub_17dd84d0Address
}

function decimals() {
    return decimals
}

function _totalSupply() {
    return _totalSupply
}

function blackList(address arg1) {
    return bool(stor11[arg1])
}

function burnFeeNumerator() {
    return burnFeeNumerator
}

function sub_58fb3d8c(?) {
    return bool(stor13[arg1])
}

function burnMax() {
    return burnMax
}

function mintFeeDenominator() {
    return mintFeeDenominator
}

function staker() {
    return stakerAddress
}

function stopped() {
    return bool(uint8(stor4.field_160))
}

function mintFeeNumerator() {
    return mintFeeNumerator
}

function owner() {
    return owner
}

function transferFeeNumerator() {
    return transferFeeNumerator
}

function sub_9589539e(?) {
    return bool(stor12[arg1])
}

function symbol() {
    return symbol[0 len symbol.length]
}

function burnFeeDenominator() {
    return burnFeeDenominator
}

function delegate() {
    return delegateAddress
}

function _balanceOf(address arg1) {
    return _balanceOf[arg1]
}

function transferFeeDenominator() {
    return transferFeeDenominator
}

function newOwner() {
    return newOwner
}

function mintFeeFlat() {
    return mintFeeFlat
}

function _allowance(address arg1, address arg2) {
    return _allowance[arg1][arg2]
}

function _fallback() payable {
    revert
}

function stop() {
    require msg.sender == owner
    Mask(96, 0, stor4.field_160) = 1
}

function start() {
    require msg.sender == owner
    Mask(96, 0, stor4.field_160) = 0
}

function sub_ad7b3dd5(?) {
    require msg.sender == owner
    sub_17dd84d0Address = arg1
}

function changeStaker(address arg1) {
    require msg.sender == owner
    require arg1
    stakerAddress = arg1
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

function delegateToNewContract(address arg1) {
    require msg.sender == owner
    delegateAddress = arg1
    emit DelegatedTo(delegateAddress);
}

function sub_b8b25aef(?) {
    require msg.sender == owner
    require arg1
    stor11[address(arg1)] = uint8(arg2)
    emit 0x4737dfd2: arg2, arg1
}

function sub_c26efba3(?) {
    require msg.sender == owner
    require arg1
    stor13[address(arg1)] = uint8(arg2)
    emit 0x4737dfd2: arg2, arg1
}

function sub_f52583c1(?) {
    require msg.sender == owner
    require arg1
    stor12[address(arg1)] = uint8(arg2)
    emit 0x4737dfd2: arg2, arg1
}

function sub_f779d431(?) {
    require msg.sender == owner
    require arg1
    stor10[address(arg1)] = uint8(arg2)
    emit 0x4737dfd2: arg2, arg1
}

function changeName(string arg1, string arg2) {
    require msg.sender == owner
    name[] = Array(len=arg1.length, data=arg1[all])
    symbol[] = Array(len=arg2.length, data=arg2[all])
}

function changeBurnBounds(uint256 arg1, uint256 arg2) {
    require msg.sender == owner
    require arg1 <= arg2
    burnMin = arg1
    burnMax = arg2
    emit ChangeBurnBoundsEvent(arg1, arg2);
}

function wipeBlacklistedAccount(address arg1) {
    require msg.sender == owner
    require stor11[address(arg1)]
    _balanceOf[address(arg1)] = 0
    require _totalSupply + _balanceOf[address(arg1)] >= _totalSupply
    _totalSupply += _balanceOf[address(arg1)]
    emit WipedAccount(_balanceOf[address(arg1)], arg1);
}

function delegateApprove(address arg1, uint256 arg2, address arg3) {
    require not uint8(stor4.field_160)
    require msg.sender == sub_17dd84d0Address
    require arg1
    if arg2:
        require not _allowance[address(arg3)][address(arg1)]
    _allowance[address(arg3)][address(arg1)] = arg2
    emit Approval(arg2, arg3, arg1);
    return 1
}

function totalSupply() {
    if not delegateAddress:
        return 0
    require ext_code.size(delegateAddress)
    call delegateAddress.0x76e71dd8 with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return ext_call.return_data[0]
}

function delegateTotalSupply() {
    if not delegateAddress:
        return 0
    require ext_code.size(delegateAddress)
    call delegateAddress.0x76e71dd8 with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return ext_call.return_data[0]
}

function withdrawTo(address arg1, uint256 arg2) {
    require msg.sender == owner
    require not uint8(stor4.field_160)
    require arg1 != this.address
    require arg2 <= eth.balance(this.address)
    call arg1 with:
       value arg2 wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function balanceOf(address arg1) {
    if not delegateAddress:
        return _balanceOf[address(arg1)]
    require ext_code.size(delegateAddress)
    call delegateAddress.0x43a468c8 with:
         gas gas_remaining wei
        args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return ext_call.return_data[0]
}

function delegateBalanceOf(address arg1) {
    if not delegateAddress:
        return _balanceOf[address(arg1)]
    require ext_code.size(delegateAddress)
    call delegateAddress.0x43a468c8 with:
         gas gas_remaining wei
        args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return ext_call.return_data[0]
}

function withdrawERC20TokenTo(address arg1, address arg2, uint256 arg3) {
    require msg.sender == owner
    require arg1
    require arg2
    require arg2 != this.address
    require ext_code.size(arg1)
    call arg1.0xa9059cbb with:
         gas gas_remaining wei
        args address(arg2), arg3
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0]
}

function allowance(address arg1, address arg2) {
    require not uint8(stor4.field_160)
    if not delegateAddress:
        return _allowance[address(arg1)][address(arg2)]
    require ext_code.size(delegateAddress)
    call delegateAddress.delegateAllowance(address arg1, address arg2) with:
         gas gas_remaining wei
        args address(arg1), arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return ext_call.return_data[0]
}

function delegateAllowance(address arg1, address arg2) {
    require not uint8(stor4.field_160)
    if not delegateAddress:
        return _allowance[address(arg1)][address(arg2)]
    require ext_code.size(delegateAddress)
    call delegateAddress.delegateAllowance(address arg1, address arg2) with:
         gas gas_remaining wei
        args address(arg1), arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return ext_call.return_data[0]
}

function changeStakingFees(uint80 arg1, uint80 arg2, uint80 arg3, uint80 arg4, uint256 arg5, uint80 arg6, uint80 arg7, uint256 arg8) {
    require msg.sender == owner
    require Mask(80, 0, arg2)
    require Mask(80, 0, arg4)
    require Mask(80, 0, arg7)
    transferFeeNumerator = Mask(80, 0, arg1)
    transferFeeDenominator = Mask(80, 0, arg2)
    mintFeeNumerator = Mask(80, 0, arg3)
    mintFeeDenominator = Mask(80, 0, arg4)
    mintFeeFlat = arg5
    burnFeeNumerator = Mask(80, 0, arg6)
    burnFeeDenominator = Mask(80, 0, arg7)
    burnFeeFlat = arg8
}

function reclaimToken(address arg1) {
    require msg.sender == owner
    require ext_code.size(arg1)
    call arg1.0x70a08231 with:
         gas gas_remaining wei
        args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(arg1)
    call arg1.0xa9059cbb with:
         gas gas_remaining wei
        args owner, ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require not ext_call.return_data[0]
}

function approve(address arg1, uint256 arg2) {
    require not uint8(stor4.field_160)
    if delegateAddress:
        require ext_code.size(delegateAddress)
        call delegateAddress.0x296f4000 with:
             gas gas_remaining wei
            args address(arg1), arg2, msg.sender
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        return bool(ext_call.return_data[0])
    require arg1
    if arg2:
        require not _allowance[address(msg.sender)][address(arg1)]
    _allowance[address(msg.sender)][address(arg1)] = arg2
    emit Approval(arg2, msg.sender, arg1);
    return 1
}

function delegateTransferFrom(address arg1, address arg2, uint256 arg3, address arg4) {
    require not uint8(stor4.field_160)
    require msg.sender == sub_17dd84d0Address
    require arg1
    require arg2
    require _balanceOf[address(arg1)] >= arg3
    require arg3 > 0
    require _allowance[address(arg1)][address(arg4)] >= arg3
    require _allowance[address(arg1)][address(arg4)] >= arg3
    _allowance[address(arg1)][address(arg4)] -= arg3
    require _balanceOf[address(arg1)] >= arg3
    _balanceOf[address(arg1)] -= arg3
    require _balanceOf[address(arg2)] + arg3 >= _balanceOf[address(arg2)]
    _balanceOf[address(arg2)] += arg3
    emit Transfer(arg3, arg1, arg2);
    return 1
}

function transfer(address arg1, uint256 arg2) {
    require not uint8(stor4.field_160)
    if delegateAddress:
        require ext_code.size(delegateAddress)
        call delegateAddress.0x9cd1a121 with:
             gas gas_remaining wei
            args address(arg1), arg2, msg.sender
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        return bool(ext_call.return_data[0])
    require arg1
    require _balanceOf[address(msg.sender)] >= arg2
    require arg2 > 0
    require _balanceOf[address(msg.sender)] >= arg2
    _balanceOf[address(msg.sender)] -= arg2
    require _balanceOf[address(arg1)] + arg2 >= _balanceOf[address(arg1)]
    _balanceOf[address(arg1)] += arg2
    emit Transfer(arg2, msg.sender, arg1);
    return 1
}

function transferFrom(address arg1, address arg2, uint256 arg3) {
    require not uint8(stor4.field_160)
    if delegateAddress:
        require ext_code.size(delegateAddress)
        call delegateAddress.0x4df6b45d with:
             gas gas_remaining wei
            args 0, 0, address(arg2), arg3, msg.sender
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        return bool(ext_call.return_data[0])
    require arg1
    require arg2
    require _balanceOf[address(arg1)] >= arg3
    require arg3 > 0
    require _allowance[address(arg1)][address(msg.sender)] >= arg3
    require _allowance[address(arg1)][address(msg.sender)] >= arg3
    _allowance[address(arg1)][address(msg.sender)] -= arg3
    require _balanceOf[address(arg1)] >= arg3
    _balanceOf[address(arg1)] -= arg3
    require _balanceOf[address(arg2)] + arg3 >= _balanceOf[address(arg2)]
    _balanceOf[address(arg2)] += arg3
    emit Transfer(arg3, arg1, arg2);
    return 1
}

function mint(address arg1, uint256 arg2) {
    require msg.sender == owner
    require stor13[address(arg1)]
    require _totalSupply + arg2 >= _totalSupply
    _totalSupply += arg2
    _balanceOf[address(arg1)] = arg2
    emit Mint(arg2, arg1);
    emit Transfer(arg2, 0, arg1);
    if not stor10[address(arg1)]:
        if not stor10[0]:
            require mintFeeDenominator > 0
            require mintFeeFlat >= 0
            require mintFeeDenominator
            if (arg2 * mintFeeNumerator / mintFeeDenominator) + mintFeeFlat > 0:
                require arg1
                require stakerAddress
                require (arg2 * mintFeeNumerator / mintFeeDenominator) + mintFeeFlat <= _balanceOf[address(arg1)]
                require _balanceOf[address(arg1)] >= (arg2 * mintFeeNumerator / mintFeeDenominator) + mintFeeFlat
                _balanceOf[address(arg1)] = _balanceOf[address(arg1)] - (arg2 * mintFeeNumerator / mintFeeDenominator) - mintFeeFlat
                require _balanceOf[stor21] + (arg2 * mintFeeNumerator / mintFeeDenominator) + mintFeeFlat >= _balanceOf[stor21]
                _balanceOf[stor21] = _balanceOf[stor21] + (arg2 * mintFeeNumerator / mintFeeDenominator) + mintFeeFlat
                emit Transfer(((arg2 * mintFeeNumerator / mintFeeDenominator) + mintFeeFlat), arg1, stakerAddress);
}

function delegateTransfer(address arg1, uint256 arg2, address arg3) {
    require not uint8(stor4.field_160)
    require msg.sender == sub_17dd84d0Address
    require not stor11[address(arg3)]
    require not stor11[address(arg1)]
    require arg3
    require arg1
    require arg2 <= _balanceOf[address(arg3)]
    require _balanceOf[address(arg3)] >= arg2
    _balanceOf[address(arg3)] -= arg2
    require _balanceOf[address(arg1)] + arg2 >= _balanceOf[address(arg1)]
    _balanceOf[address(arg1)] += arg2
    emit Transfer(arg2, arg3, arg1);
    if not stor10[address(arg1)]:
        if not stor10[address(arg3)]:
            require transferFeeDenominator > 0
            require transferFeeDenominator
            if arg2 * transferFeeNumerator / transferFeeDenominator > 0:
                require arg1
                require stakerAddress
                require arg2 * transferFeeNumerator / transferFeeDenominator <= _balanceOf[address(arg1)]
                require _balanceOf[address(arg1)] >= arg2 * transferFeeNumerator / transferFeeDenominator
                _balanceOf[address(arg1)] -= arg2 * transferFeeNumerator / transferFeeDenominator
                require _balanceOf[stor21] + (arg2 * transferFeeNumerator / transferFeeDenominator) >= _balanceOf[stor21]
                _balanceOf[stor21] += arg2 * transferFeeNumerator / transferFeeDenominator
                emit Transfer((arg2 * transferFeeNumerator / transferFeeDenominator), arg1, stakerAddress);
    return 1
}

function burn(uint256 arg1) {
    require stor12[address(msg.sender)]
    require arg1 >= burnMin
    require arg1 <= burnMax
    if stor10[address(msg.sender)]:
        require arg1 >= 0
        require arg1 <= _balanceOf[address(msg.sender)]
        require _balanceOf[address(msg.sender)] >= arg1
        _balanceOf[address(msg.sender)] -= arg1
        require _totalSupply >= arg1
        _totalSupply -= arg1
        emit Burn(arg1, msg.sender);
        emit Transfer(arg1, msg.sender, 0);
    else:
        if stor10[0]:
            require arg1 >= 0
            require arg1 <= _balanceOf[address(msg.sender)]
            require _balanceOf[address(msg.sender)] >= arg1
            _balanceOf[address(msg.sender)] -= arg1
            require _totalSupply >= arg1
            _totalSupply -= arg1
            emit Burn(arg1, msg.sender);
            emit Transfer(arg1, msg.sender, 0);
        else:
            require burnFeeDenominator > 0
            require burnFeeFlat >= 0
            require burnFeeDenominator
            if (arg1 * burnFeeNumerator / burnFeeDenominator) + burnFeeFlat > 0:
                require msg.sender
                require stakerAddress
                require (arg1 * burnFeeNumerator / burnFeeDenominator) + burnFeeFlat <= _balanceOf[address(msg.sender)]
                require _balanceOf[address(msg.sender)] >= (arg1 * burnFeeNumerator / burnFeeDenominator) + burnFeeFlat
                _balanceOf[address(msg.sender)] = _balanceOf[address(msg.sender)] - (arg1 * burnFeeNumerator / burnFeeDenominator) - burnFeeFlat
                require _balanceOf[stor21] + (arg1 * burnFeeNumerator / burnFeeDenominator) + burnFeeFlat >= _balanceOf[stor21]
                _balanceOf[stor21] = _balanceOf[stor21] + (arg1 * burnFeeNumerator / burnFeeDenominator) + burnFeeFlat
                emit Transfer(((arg1 * burnFeeNumerator / burnFeeDenominator) + burnFeeFlat), msg.sender, stakerAddress);
            require arg1 >= (arg1 * burnFeeNumerator / burnFeeDenominator) + burnFeeFlat
            require arg1 - (arg1 * burnFeeNumerator / burnFeeDenominator) - burnFeeFlat <= _balanceOf[address(msg.sender)]
            require _balanceOf[address(msg.sender)] >= arg1 - (arg1 * burnFeeNumerator / burnFeeDenominator) - burnFeeFlat
            _balanceOf[address(msg.sender)] = _balanceOf[address(msg.sender)] - arg1 + (arg1 * burnFeeNumerator / burnFeeDenominator) + burnFeeFlat
            require _totalSupply >= arg1 - (arg1 * burnFeeNumerator / burnFeeDenominator) - burnFeeFlat
            _totalSupply = _totalSupply - arg1 + (arg1 * burnFeeNumerator / burnFeeDenominator) + burnFeeFlat
            emit Burn((arg1 - (arg1 * burnFeeNumerator / burnFeeDenominator) - burnFeeFlat), msg.sender);
            emit Transfer((arg1 - (arg1 * burnFeeNumerator / burnFeeDenominator) - burnFeeFlat), msg.sender, 0);
}



}
