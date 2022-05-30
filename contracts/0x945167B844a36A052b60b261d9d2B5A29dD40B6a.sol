contract main {




// =====================  Runtime code  =====================


uint8 version;
address stor0; offset 8
uint256 sub_32076715;

function sub_32076715(?) {
    return sub_32076715
}

function version() {
    return version
}

function _fallback() payable {
    revert
}

function totalSupply() {
    require ext_code.size(stor0)
    call stor0.getUint(bytes32 arg1) with:
         gas gas_remaining wei
        args sha3('token.totalSupply')
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return ext_call.return_data[0]
}

function issuer() {
    require ext_code.size(stor0)
    call stor0.getAddress(bytes32 arg1) with:
         gas gas_remaining wei
        args sha3('token.issuer')
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return ext_call.return_data[12 len 20]
}

function decimals() {
    require ext_code.size(stor0)
    call stor0.getUint(bytes32 arg1) with:
         gas gas_remaining wei
        args sha3('token.decimals')
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return ext_call.return_data[31 len 1]
}

function auditor() {
    require ext_code.size(stor0)
    call stor0.getAddress(bytes32 arg1) with:
         gas gas_remaining wei
        args sha3('token.auditor')
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return ext_call.return_data[12 len 20]
}

function depository() {
    require ext_code.size(stor0)
    call stor0.getAddress(bytes32 arg1) with:
         gas gas_remaining wei
        args sha3('token.depository')
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return ext_call.return_data[12 len 20]
}

function assetsOnDeposit() {
    require ext_code.size(stor0)
    call stor0.getUint(bytes32 arg1) with:
         gas gas_remaining wei
        args sha3('issuable.assetsOnDeposit')
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return ext_call.return_data[0]
}

function assetsCertified() {
    require ext_code.size(stor0)
    call stor0.getUint(bytes32 arg1) with:
         gas gas_remaining wei
        args sha3('issuable.assetsCertified')
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return ext_call.return_data[0]
}

function balanceOf(address arg1) {
    require ext_code.size(stor0)
    call stor0.getUint(bytes32 arg1) with:
         gas gas_remaining wei
        args sha3('token.balances', arg1)
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return ext_call.return_data[0]
}

function redemptionPaused() {
    require ext_code.size(stor0)
    call stor0.getBool(bytes32 arg1) with:
         gas gas_remaining wei
        args sha3('token.redemptionPaused')
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return bool(ext_call.return_data[0])
}

function issuerDelegate() {
    require ext_code.size(stor0)
    call stor0.getAddress(bytes32 arg1) with:
         gas gas_remaining wei
        args sha3('token.issuerDelegate')
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return ext_call.return_data[12 len 20]
}

function isOwner(address arg1) {
    require ext_code.size(stor0)
    call stor0.getBool(bytes32 arg1) with:
         gas gas_remaining wei
        args sha3('access.role', 0, arg1)
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return bool(ext_call.return_data[0])
}

function auditorDelegate() {
    require ext_code.size(stor0)
    call stor0.getAddress(bytes32 arg1) with:
         gas gas_remaining wei
        args sha3('token.auditorDelegate')
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return ext_call.return_data[12 len 20]
}

function depositoryDelegate() {
    require ext_code.size(stor0)
    call stor0.getAddress(bytes32 arg1) with:
         gas gas_remaining wei
        args sha3('token.depositoryDelegate')
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return ext_call.return_data[12 len 20]
}

function checkRedemptionFulfilled(bytes32 arg1) {
    require ext_code.size(stor0)
    call stor0.getBool(bytes32 arg1) with:
         gas gas_remaining wei
        args sha3('token.redemptionFulfilled', arg1)
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return bool(ext_call.return_data[0])
}

function ecverify(bytes32 arg1, bytes arg2, address arg3) {
    require ext_code.size(0x7de4e7e5cde5c82b32ac24bf216db6aee37c5aa)
    delegate 0x7de4e7e5cde5c82b32ac24bf216db6aee37c5aa.recover(bytes32 arg1, bytes arg2) with:
         gas gas_remaining wei
        args arg1, Array(len=arg2.length, data=arg2[all])
    if not delegate.return_code:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return (delegate.return_data[12 len 20] == arg3)
}

function setMaxRedemption(uint256 arg1) {
    require ext_code.size(stor0)
    call stor0.getAddress(bytes32 arg1) with:
         gas gas_remaining wei
        args sha3('token.depository')
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[12 len 20] != msg.sender:
        require ext_code.size(stor0)
        call stor0.getAddress(bytes32 arg1) with:
             gas gas_remaining wei
            args sha3('token.depositoryDelegate')
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require msg.sender == ext_call.return_data[12 len 20]
    sub_32076715 = arg1
}

function sub_2c3feff0(?) {
    mem[128 len arg1.length] = arg1[all]
    mem[ceil32(arg1.length) + 128] = 'redemptionOrder'
    mem[ceil32(arg1.length) + 143 len floor32(arg1.length)] = call.data[arg1 + 36 len floor32(arg1.length)]
    mem[ceil32(arg1.length) + floor32(arg1.length) + 143] = !(256^(-(arg1.length % 32) + 32) - 1) and call.data[arg1 + floor32(arg1.length) + 36 len arg1.length % 32], mem[arg1.length + 128 len -(arg1.length % 32) + 32] or 256^(-(arg1.length % 32) + 32) - 1 and mem[ceil32(arg1.length) + floor32(arg1.length) + 143]
    mem[ceil32(arg1.length) + arg1.length + 143] = ' '
    return sha3(Mask(224, 32, '\x19Ethereum Signed Message:\n32') >> 32, sha3('redemptionOrder', call.data[arg1 + 36 len floor32(arg1.length)], mem[ceil32(arg1.length) + floor32(arg1.length) + 143 len (arg1.length % 32) + 1], 'amount:', arg2))
}

function sub_6afab625(?) {
    mem[128 len arg1.length] = arg1[all]
    mem[ceil32(arg1.length) + 128] = 'redemptionOrder'
    mem[ceil32(arg1.length) + 143 len floor32(arg1.length)] = call.data[arg1 + 36 len floor32(arg1.length)]
    mem[ceil32(arg1.length) + floor32(arg1.length) + 143] = !(256^(-(arg1.length % 32) + 32) - 1) and call.data[arg1 + floor32(arg1.length) + 36 len arg1.length % 32], mem[arg1.length + 128 len -(arg1.length % 32) + 32] or 256^(-(arg1.length % 32) + 32) - 1 and mem[ceil32(arg1.length) + floor32(arg1.length) + 143]
    mem[ceil32(arg1.length) + arg1.length + 143] = ' '
    mem[ceil32(arg1.length) + 128] = sha3('redemptionOrder', call.data[arg1 + 36 len floor32(arg1.length)], mem[ceil32(arg1.length) + floor32(arg1.length) + 143 len (arg1.length % 32) + 1], 'amount:', arg2)
    return memory
      from ceil32(arg1.length) + 128
       len 32
}

function markRedemptionFulfilled(bytes32 arg1) {
    require ext_code.size(stor0)
    call stor0.getAddress(bytes32 arg1) with:
         gas gas_remaining wei
        args sha3('token.depository')
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(stor0)
    if ext_call.return_data[12 len 20] != msg.sender:
        call stor0.getAddress(bytes32 arg1) with:
             gas gas_remaining wei
            args sha3('token.depositoryDelegate')
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require msg.sender == ext_call.return_data[12 len 20]
    call stor0.setBool(bytes32 arg1, bool arg2) with:
         gas gas_remaining wei
        args sha3('token.redemptionFulfilled', arg1), 1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function setIssuerDelegate(address arg1) {
    require ext_code.size(stor0)
    call stor0.getAddress(bytes32 arg1) with:
         gas gas_remaining wei
        args sha3('token.issuer')
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require msg.sender == ext_call.return_data[12 len 20]
    require arg1
    require ext_code.size(stor0)
    call stor0.getAddress(bytes32 arg1) with:
         gas gas_remaining wei
        args sha3('token.issuerDelegate')
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(stor0)
    call stor0.setAddress(bytes32 arg1, address arg2) with:
         gas gas_remaining wei
        args sha3('token.issuerDelegate'), arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    emit IssuerDelegated(address(ext_call.return_data[0]), arg1);
}

function setAuditorDelegate(address arg1) {
    require ext_code.size(stor0)
    call stor0.getAddress(bytes32 arg1) with:
         gas gas_remaining wei
        args sha3('token.auditor')
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require msg.sender == ext_call.return_data[12 len 20]
    require arg1
    require ext_code.size(stor0)
    call stor0.getAddress(bytes32 arg1) with:
         gas gas_remaining wei
        args sha3('token.auditorDelegate')
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(stor0)
    call stor0.setAddress(bytes32 arg1, address arg2) with:
         gas gas_remaining wei
        args sha3('token.auditorDelegate'), arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    emit AuditorDelegated(address(ext_call.return_data[0]), arg1);
}

function setDepositoryDelegate(address arg1) {
    require ext_code.size(stor0)
    call stor0.getAddress(bytes32 arg1) with:
         gas gas_remaining wei
        args sha3('token.depository')
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require msg.sender == ext_call.return_data[12 len 20]
    require arg1
    require ext_code.size(stor0)
    call stor0.getAddress(bytes32 arg1) with:
         gas gas_remaining wei
        args sha3('token.depositoryDelegate')
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(stor0)
    call stor0.setAddress(bytes32 arg1, address arg2) with:
         gas gas_remaining wei
        args sha3('token.depositoryDelegate'), arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    emit DepositoryDelegated(address(ext_call.return_data[0]), arg1);
}

function unpauseRedemption() {
    mem[171 len 0] = None
    mem[171] = uint128('access.role'), mem[192 len 11] or 0x6f776e6572000000000000000000000000000000000000000000000000000000
    require ext_code.size(stor0)
    call stor0.getBool(bytes32 arg1) with:
         gas gas_remaining wei
        args sha3('access.role', mem[171 len 5], msg.sender)
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require 1 == bool(ext_call.return_data[0])
    require ext_code.size(stor0)
    call stor0.getBool(bytes32 arg1) with:
         gas gas_remaining wei
        args sha3('token.redemptionPaused')
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0]
    require ext_code.size(stor0)
    call stor0.setBool(bytes32 arg1, bool arg2) with:
         gas gas_remaining wei
        args sha3('token.redemptionPaused'), 0
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    emit UnpauseRedemption()
}

function pauseRedemption() {
    mem[171 len 0] = None
    mem[171] = uint128('access.role'), mem[192 len 11] or 0x6f776e6572000000000000000000000000000000000000000000000000000000
    require ext_code.size(stor0)
    call stor0.getBool(bytes32 arg1) with:
         gas gas_remaining wei
        args sha3('access.role', mem[171 len 5], msg.sender)
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require 1 == bool(ext_call.return_data[0])
    require ext_code.size(stor0)
    call stor0.getBool(bytes32 arg1) with:
         gas gas_remaining wei
        args sha3('token.redemptionPaused')
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require not ext_call.return_data[0]
    require ext_code.size(stor0)
    call stor0.setBool(bytes32 arg1, bool arg2) with:
         gas gas_remaining wei
        args sha3('token.redemptionPaused'), 1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    emit PauseRedemption()
}

function setIssuer(address arg1) {
    mem[171 len 0] = None
    mem[171] = uint128('access.role'), mem[192 len 11] or 0x6f776e6572000000000000000000000000000000000000000000000000000000
    require ext_code.size(stor0)
    call stor0.getBool(bytes32 arg1) with:
         gas gas_remaining wei
        args sha3('access.role', mem[171 len 5], msg.sender)
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require 1 == bool(ext_call.return_data[0])
    require arg1
    require ext_code.size(stor0)
    call stor0.setAddress(bytes32 arg1, address arg2) with:
         gas gas_remaining wei
        args sha3('token.issuer'), arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require ext_code.size(stor0)
    call stor0.getAddress(bytes32 arg1) with:
         gas gas_remaining wei
        args sha3('token.issuer')
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    emit IssuerTransferred(address(ext_call.return_data[0]), arg1);
}

function setAuditor(address arg1) {
    mem[171 len 0] = None
    mem[171] = uint128('access.role'), mem[192 len 11] or 0x6f776e6572000000000000000000000000000000000000000000000000000000
    require ext_code.size(stor0)
    call stor0.getBool(bytes32 arg1) with:
         gas gas_remaining wei
        args sha3('access.role', mem[171 len 5], msg.sender)
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require 1 == bool(ext_call.return_data[0])
    require arg1
    require ext_code.size(stor0)
    call stor0.setAddress(bytes32 arg1, address arg2) with:
         gas gas_remaining wei
        args sha3('token.auditor'), arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require ext_code.size(stor0)
    call stor0.getAddress(bytes32 arg1) with:
         gas gas_remaining wei
        args sha3('token.auditor')
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    emit AuditorTransferred(address(ext_call.return_data[0]), arg1);
}

function setDepository(address arg1) {
    mem[171 len 0] = None
    mem[171] = uint128('access.role'), mem[192 len 11] or 0x6f776e6572000000000000000000000000000000000000000000000000000000
    require ext_code.size(stor0)
    call stor0.getBool(bytes32 arg1) with:
         gas gas_remaining wei
        args sha3('access.role', mem[171 len 5], msg.sender)
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require 1 == bool(ext_call.return_data[0])
    require arg1
    require ext_code.size(stor0)
    call stor0.setAddress(bytes32 arg1, address arg2) with:
         gas gas_remaining wei
        args sha3('token.depository'), arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require ext_code.size(stor0)
    call stor0.getAddress(bytes32 arg1) with:
         gas gas_remaining wei
        args sha3('token.depository')
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    emit DepositoryTransferred(address(ext_call.return_data[0]), arg1);
}

function backofficeRedeem(uint256 arg1) {
    require ext_code.size(stor0)
    call stor0.getAddress(bytes32 arg1) with:
         gas gas_remaining wei
        args sha3('token.issuer')
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(stor0)
    if ext_call.return_data[12 len 20] != msg.sender:
        call stor0.getAddress(bytes32 arg1) with:
             gas gas_remaining wei
            args sha3('token.issuerDelegate')
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[12 len 20] != msg.sender:
            require ext_code.size(stor0)
            call stor0.getAddress(bytes32 arg1) with:
                 gas gas_remaining wei
                args sha3('token.depository')
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if ext_call.return_data[12 len 20] != msg.sender:
                require ext_code.size(stor0)
                call stor0.getAddress(bytes32 arg1) with:
                     gas gas_remaining wei
                    args sha3('token.depositoryDelegate')
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require msg.sender == ext_call.return_data[12 len 20]
    call stor0.getUint(bytes32 arg1) with:
         gas gas_remaining wei
        args sha3('token.decimals')
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(stor0)
    call stor0.getUint(bytes32 arg1) with:
         gas gas_remaining wei
        args sha3('token.totalSupply')
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(stor0)
    call stor0.getUint(bytes32 arg1) with:
         gas gas_remaining wei
        args sha3('issuable.assetsOnDeposit')
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(stor0)
    call stor0.getUint(bytes32 arg1) with:
         gas gas_remaining wei
        args sha3('issuable.assetsCertified')
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require 10^uint8(ext_call.return_data[0]) >= 10
    require 10^uint8(ext_call.return_data[0])
    require not arg1 % 10^uint8(ext_call.return_data[0])
    require 10^uint8(ext_call.return_data[0]) >= 10
    require 10^uint8(ext_call.return_data[0])
    require arg1 / 10^uint8(ext_call.return_data[0]) >= 1
    require ext_code.size(stor0)
    call stor0.getUint(bytes32 arg1) with:
         gas gas_remaining wei
        args sha3('token.balances', msg.sender)
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require arg1 <= ext_call.return_data[0]
    require arg1 <= ext_call.return_data[0]
    require arg1 <= ext_call.return_data[0]
    require arg1 <= ext_call.return_data[0]
    require arg1 <= ext_call.return_data[0]
    require ext_code.size(stor0)
    call stor0.setUint(bytes32 arg1, uint256 arg2) with:
         gas gas_remaining wei
        args sha3('token.totalSupply'), ext_call.return_data[0] - arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require arg1 <= ext_call.return_data[0]
    require ext_code.size(stor0)
    call stor0.setUint(bytes32 arg1, uint256 arg2) with:
         gas gas_remaining wei
        args sha3('issuable.assetsOnDeposit'), ext_call.return_data[0] - arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require arg1 <= ext_call.return_data[0]
    require ext_code.size(stor0)
    call stor0.setUint(bytes32 arg1, uint256 arg2) with:
         gas gas_remaining wei
        args sha3('issuable.assetsCertified'), ext_call.return_data[0] - arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require ext_code.size(stor0)
    call stor0.getUint(bytes32 arg1) with:
         gas gas_remaining wei
        args sha3('token.balances', msg.sender)
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require arg1 <= ext_call.return_data[0]
    require ext_code.size(stor0)
    call stor0.setUint(bytes32 arg1, uint256 arg2) with:
         gas gas_remaining wei
        args sha3('token.balances', msg.sender), ext_call.return_data[0] - arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    emit Redemption(arg1, msg.sender, 0);
}

function sub_52858d2f(?) {
    mem[128 len arg2.length] = arg2[all]
    mem[ceil32(arg2.length) + 132] = sha3('token.redemptionPaused')
    require ext_code.size(stor0)
    call stor0.getBool(bytes32 arg1) with:
         gas gas_remaining wei
        args sha3('token.redemptionPaused')
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require not ext_call.return_data[0]
    require arg3 <= sub_32076715
    mem[ceil32(arg2.length) + 128] = 'redemptionOrder'
    mem[ceil32(arg2.length) + 143 len floor32(arg2.length)] = call.data[arg2 + 36 len floor32(arg2.length)]
    mem[ceil32(arg2.length) + floor32(arg2.length) + 143] = !(256^(-(arg2.length % 32) + 32) - 1) and call.data[arg2 + floor32(arg2.length) + 36 len arg2.length % 32], mem[arg2.length + 128 len -(arg2.length % 32) + 32] or 256^(-(arg2.length % 32) + 32) - 1 and mem[ceil32(arg2.length) + floor32(arg2.length) + 143]
    mem[ceil32(arg2.length) + arg2.length + 143] = ' '
    mem[ceil32(arg2.length) + arg2.length + 144] = 'amount:'
    mem[ceil32(arg2.length) + arg2.length + 151] = arg3
    _172 = sha3('redemptionOrder', mem[ceil32(arg2.length) + 143 len 17], uint32(sha3('token.redemptionPaused')), mem[ceil32(arg2.length) + 164 len arg2.length + 19])
    mem[ceil32(arg2.length) + 128] = 'redemptionOrder'
    mem[ceil32(arg2.length) + 143 len floor32(arg2.length)] = call.data[arg2 + 36 len floor32(arg2.length)]
    mem[ceil32(arg2.length) + floor32(arg2.length) + 143] = !(256^(-(arg2.length % 32) + 32) - 1) and call.data[arg2 + floor32(arg2.length) + 36 len arg2.length % 32], mem[arg2.length + 128 len -(arg2.length % 32) + 32] or 256^(-(arg2.length % 32) + 32) - 1 and mem[ceil32(arg2.length) + floor32(arg2.length) + 143]
    mem[ceil32(arg2.length) + arg2.length + 143] = ' '
    mem[ceil32(arg2.length) + arg2.length + 144] = 'amount:'
    mem[ceil32(arg2.length) + arg2.length + 151] = arg3
    require _172 == arg1
    signer = erecover(sha3(Mask(224, 32, '\x19Ethereum Signed Message:\n32') >> 32, sha3('redemptionOrder', mem[ceil32(arg2.length) + 143 len 17], uint32(sha3('token.redemptionPaused')), mem[ceil32(arg2.length) + 164 len arg2.length + 19])), arg4 << 248, arg5, arg6) 
    if not erecover.result:
        revert with ext_call.return_data[0 len return_data.size]
    require ext_code.size(stor0)
    call stor0.getBool(bytes32 arg1) with:
         gas gas_remaining wei
        args sha3('token.redemptionFulfilled', _172)
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require not ext_call.return_data[0]
    require ext_code.size(stor0)
    call stor0.getAddress(bytes32 arg1) with:
         gas gas_remaining wei
        args sha3('token.depository')
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(stor0)
    if address(signer) != ext_call.return_data[12 len 20]:
        call stor0.getAddress(bytes32 arg1) with:
             gas gas_remaining wei
            args sha3('token.depositoryDelegate')
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require address(signer) == ext_call.return_data[12 len 20]
    call stor0.getUint(bytes32 arg1) with:
         gas gas_remaining wei
        args sha3('token.decimals')
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(stor0)
    call stor0.getUint(bytes32 arg1) with:
         gas gas_remaining wei
        args sha3('token.totalSupply')
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(stor0)
    call stor0.getUint(bytes32 arg1) with:
         gas gas_remaining wei
        args sha3('issuable.assetsOnDeposit')
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(stor0)
    call stor0.getUint(bytes32 arg1) with:
         gas gas_remaining wei
        args sha3('issuable.assetsCertified')
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require 10^uint8(ext_call.return_data[0]) >= 10
    require 10^uint8(ext_call.return_data[0])
    require not arg3 % 10^uint8(ext_call.return_data[0])
    require 10^uint8(ext_call.return_data[0]) >= 10
    require 10^uint8(ext_call.return_data[0])
    require arg3 / 10^uint8(ext_call.return_data[0]) >= 1
    require ext_code.size(stor0)
    call stor0.getUint(bytes32 arg1) with:
         gas gas_remaining wei
        args sha3('token.balances', msg.sender)
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require arg3 <= ext_call.return_data[0]
    require arg3 <= ext_call.return_data[0]
    require arg3 <= ext_call.return_data[0]
    require arg3 <= ext_call.return_data[0]
    require arg3 <= ext_call.return_data[0]
    require ext_code.size(stor0)
    call stor0.setUint(bytes32 arg1, uint256 arg2) with:
         gas gas_remaining wei
        args sha3('token.totalSupply'), ext_call.return_data[0] - arg3
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require arg3 <= ext_call.return_data[0]
    require ext_code.size(stor0)
    call stor0.setUint(bytes32 arg1, uint256 arg2) with:
         gas gas_remaining wei
        args sha3('issuable.assetsOnDeposit'), ext_call.return_data[0] - arg3
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require arg3 <= ext_call.return_data[0]
    require ext_code.size(stor0)
    call stor0.setUint(bytes32 arg1, uint256 arg2) with:
         gas gas_remaining wei
        args sha3('issuable.assetsCertified'), ext_call.return_data[0] - arg3
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require ext_code.size(stor0)
    call stor0.getUint(bytes32 arg1) with:
         gas gas_remaining wei
        args sha3('token.balances', msg.sender)
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require arg3 <= ext_call.return_data[0]
    require ext_code.size(stor0)
    call stor0.setUint(bytes32 arg1, uint256 arg2) with:
         gas gas_remaining wei
        args sha3('token.balances', msg.sender), ext_call.return_data[0] - arg3
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require ext_code.size(stor0)
    call stor0.setBool(bytes32 arg1, bool arg2) with:
         gas gas_remaining wei
        args sha3('token.redemptionFulfilled', _172), 1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    emit Redemption(arg3, msg.sender, _172);
}



}
