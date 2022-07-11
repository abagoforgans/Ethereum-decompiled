contract main {




// =====================  Runtime code  =====================


#
#  - newVote(bytes arg1, string arg2)
#  - forward(bytes arg1)
#  - vote(uint256 arg1, bool arg2, bool arg3)
#  - newVote(bytes arg1, string arg2, bool arg3, bool arg4)
#  - executeVote(uint256 arg1)
#
const sub_3c624c75(?) = sha3(Mask(144, 112, 'MODIFY_QUORUM_ROLE') >> 112)

const sub_62de7e5a(?) = sha3(Mask(152, 104, 'MODIFY_SUPPORT_ROLE') >> 104)

const allowRecoverability(address arg1) = 1

const isForwarder = 1

const CREATE_VOTES_ROLE = sha3(Mask(136, 120, 'CREATE_VOTES_ROLE') >> 120)

const PCT_BASE = 10^18


uint64 supportRequiredPct; offset 160
address tokenAddress;
uint64 minAcceptQuorumPct;
uint64 voteTime; offset 64
mapping of struct voterState;
uint256 votesLength;
address kernelAddress;
uint256 appId;
uint256 initializationBlock;

function getVoterState(uint256 arg1, address arg2) {
    if arg1 >= votesLength:
        revert with 0, 'VOTING_NO_VOTE'
    require voterState[arg1][6][address(arg2)].field_0 <= 2
    return voterState[arg1][6][address(arg2)].field_0
}

function appId() {
    return appId
}

function getInitializationBlock() {
    return initializationBlock
}

function voteTime() {
    return voteTime
}

function kernel() {
    return kernelAddress
}

function minAcceptQuorumPct() {
    return minAcceptQuorumPct
}

function votesLength() {
    return votesLength
}

function supportRequiredPct() {
    return supportRequiredPct
}

function token() {
    return tokenAddress
}

function _fallback() payable {
    revert
}

function isPetrified() {
    return (initializationBlock == -1)
}

function hasInitialized() {
    if not initializationBlock:
        return bool(initializationBlock)
    return block.number >= initializationBlock
}

function getRecoveryVault() {
    require ext_code.size(kernelAddress)
    call kernelAddress.0x32f0a3b5 with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return ext_call.return_data[12 len 20]
}

function initialize(address arg1, uint64 arg2, uint64 arg3, uint64 arg4) {
    if initializationBlock:
        revert with 0, 'INIT_ALREADY_INITIALIZED'
    initializationBlock = block.number
    if arg3 > arg2:
        revert with 0, 'VOTING_INIT_PCTS'
    if arg2 >= 10^18:
        revert with 0, 'VOTING_INIT_SUPPORT_TOO_BIG'
    tokenAddress = arg1
    supportRequiredPct = arg2
    minAcceptQuorumPct = arg3
    voteTime = arg4
}

function getEVMScriptRegistry() {
    require ext_code.size(kernelAddress)
    call kernelAddress.getApp(bytes32 arg1, bytes32 arg2) with:
         gas gas_remaining wei
        args 0xd6f028ca0e8edb4a8c9757ca4fdccab25fa1e0317da1188108f7d2dee14902fb, 0xddbcfd564f642ab5627cf68b9b7d374fb4f8a36e941a75d89c87998cef03bd61
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return ext_call.return_data[12 len 20]
}

function canForward(address arg1, bytes arg2) {
    if not initializationBlock:
        return 0
    if block.number < initializationBlock:
        return 0
    if not kernelAddress:
        return 0
    require ext_code.size(kernelAddress)
    call kernelAddress.hasPermission(address arg1, address arg2, bytes32 arg3, bytes arg4) with:
         gas gas_remaining wei
        args address(arg1), address(this.address), sha3('CREATE_VOTES_ROLE'), 128, 0
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return bool(ext_call.return_data[0])
}

function getEVMScriptExecutor(bytes arg1) {
    require ext_code.size(kernelAddress)
    call kernelAddress.getApp(bytes32 arg1, bytes32 arg2) with:
         gas gas_remaining wei
        args 0xd6f028ca0e8edb4a8c9757ca4fdccab25fa1e0317da1188108f7d2dee14902fb, 0xddbcfd564f642ab5627cf68b9b7d374fb4f8a36e941a75d89c87998cef03bd61
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(address(ext_call.return_data[0]))
    call address(ext_call.return_data[0]).getScriptExecutor(bytes arg1) with:
         gas gas_remaining wei
        args Array(len=arg1.length, data=arg1[all])
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return address(ext_call.return_data[0])
}

function canPerform(address arg1, bytes32 arg2, uint256[] arg3) {
    if not initializationBlock:
        return 0
    if block.number < initializationBlock:
        return 0
    if not kernelAddress:
        return 0
    mem[(32 * arg3.length) + 292 len floor32(arg3.length)] = call.data[arg3 + 36 len floor32(arg3.length)]
    require ext_code.size(kernelAddress)
    call kernelAddress.hasPermission(address arg1, address arg2, bytes32 arg3, bytes arg4) with:
         gas gas_remaining wei
        args address(arg1), address(this.address), arg2, Array(len=32 * arg3.length, data=call.data[arg3 + 36 len floor32(arg3.length)], mem[(32 * arg3.length) + floor32(arg3.length) + 292 len (32 * arg3.length) - floor32(arg3.length)])
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return bool(ext_call.return_data[0])
}

function changeMinAcceptQuorumPct(uint64 arg1) {
    if not initializationBlock:
        revert with 0, 'APP_AUTH_FAILED'
    if block.number < initializationBlock:
        revert with 0, 'APP_AUTH_FAILED'
    if not kernelAddress:
        revert with 0, 'APP_AUTH_FAILED'
    require ext_code.size(kernelAddress)
    call kernelAddress.hasPermission(address arg1, address arg2, bytes32 arg3, bytes arg4) with:
         gas gas_remaining wei
        args msg.sender, address(this.address), sha3('MODIFY_QUORUM_ROLE'), 128, 64, arg1 << 192, minAcceptQuorumPct
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        revert with 0, 'APP_AUTH_FAILED'
    if arg1 > supportRequiredPct:
        revert with 0, 'VOTING_CHANGE_QUORUM_PCTS'
    minAcceptQuorumPct = arg1
    emit ChangeMinQuorum(arg1);
}

function canVote(uint256 arg1, address arg2) {
    if arg1 >= votesLength:
        revert with 0, 'VOTING_NO_VOTE'
    if uint64(voteTime + voterState[arg1].field_8) < voterState[arg1].field_8:
        revert with 0, 'MATH64_ADD_OVERFLOW'
    if block.timestamp > test266151307():
        revert with 0, 'UINT64_NUMBER_TOO_BIG'
    if uint64(block.timestamp) >= uint64(voteTime + voterState[arg1].field_8):
        return (uint64(block.timestamp) < uint64(voteTime + voterState[arg1].field_8))
    if voterState[arg1].field_0:
        return not bool(voterState[arg1].field_0)
    require ext_code.size(tokenAddress)
    call tokenAddress.balanceOfAt(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args address(arg2), voterState[arg1].field_72
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return (ext_call.return_data[0] > 0)
}

function changeSupportRequiredPct(uint64 arg1) {
    if not initializationBlock:
        revert with 0, 'APP_AUTH_FAILED'
    if block.number < initializationBlock:
        revert with 0, 'APP_AUTH_FAILED'
    if not kernelAddress:
        revert with 0, 'APP_AUTH_FAILED'
    require ext_code.size(kernelAddress)
    call kernelAddress.hasPermission(address arg1, address arg2, bytes32 arg3, bytes arg4) with:
         gas gas_remaining wei
        args msg.sender, address(this.address), sha3('MODIFY_SUPPORT_ROLE'), 128, 64, arg1 << 192, supportRequiredPct
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        revert with 0, 'APP_AUTH_FAILED'
    if minAcceptQuorumPct > arg1:
        revert with 0, 'VOTING_CHANGE_SUPPORT_PCTS'
    if arg1 >= 10^18:
        revert with 0, 'VOTING_CHANGE_SUPP_TOO_BIG'
    supportRequiredPct = arg1
    emit ChangeSupportRequired(arg1);
}

function getVote(uint256 arg1) {
    if arg1 >= votesLength:
        revert with 0, 'VOTING_NO_VOTE'
    if uint64(voteTime + voterState[arg1].field_8) < voterState[arg1].field_8:
        revert with 0, 'MATH64_ADD_OVERFLOW'
    if block.timestamp > test266151307():
        revert with 0, 'UINT64_NUMBER_TOO_BIG'
    mem[320] = voterState[arg1][5].field_0
    idx = 320
    s = 0
    while voterState[arg1][5].length + 288 > idx:
        mem[idx + 32] = voterState[arg1][s + 5].field_256
        idx = idx + 32
        s = s + 1
        continue 
    if uint64(block.timestamp) >= uint64(voteTime + voterState[arg1].field_8):
        return uint64(block.timestamp) < uint64(voteTime + voterState[arg1].field_8), 
               bool(voterState[arg1].field_0),
               voterState[arg1].field_0,
               voterState[arg1].field_0,
               voterState[arg1].field_0,
               voterState[arg1].field_256,
               voterState[arg1].field_512,
               voterState[arg1].field_768,
               voterState[arg1].field_1024,
               Array(len=voterState[arg1][5].length, data=mem[320 len voterState[arg1][5].length])
    return not bool(voterState[arg1].field_0), 
           bool(voterState[arg1].field_0),
           voterState[arg1].field_0,
           voterState[arg1].field_0,
           voterState[arg1].field_0,
           voterState[arg1].field_256,
           voterState[arg1].field_512,
           voterState[arg1].field_768,
           voterState[arg1].field_1024,
           Array(len=voterState[arg1][5].length, data=mem[320 len voterState[arg1][5].length])
}

function transferToVault(address arg1) {
    require ext_code.size(kernelAddress)
    call kernelAddress.0x32f0a3b5 with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[12 len 20]:
        revert with 0, 'RECOVER_VAULT_NOT_CONTRACT'
    if ext_code.size(ext_call.return_data[0]) <= 0:
        revert with 0, 'RECOVER_VAULT_NOT_CONTRACT'
    if not arg1:
        call address(ext_call.return_data[0]) with:
           value eth.balance(this.address) wei
             gas 2300 * is_zero(value) wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        emit RecoverToVault(eth.balance(this.address), address(ext_call.return_data[0]), arg1);
    else:
        staticcall arg1.0x70a08231 with:
                gas gas_remaining wei
               args address(this.address) << 64, 0
        if not ext_call.success:
            revert with 0, 'SAFE_ERC_20_BALANCE_REVERTED'
        if ext_call.success <= 0:
            call arg1.0xa9059cbb with:
                 gas gas_remaining wei
                args address(ext_call.return_data[0]) << 64, 0, 0
            if ext_call.success <= 0:
                revert with 0, 'RECOVER_TOKEN_TRANSFER_FAILED'
            if return_data.size:
                if 32 != return_data.size:
                    revert with 0, 'RECOVER_TOKEN_TRANSFER_FAILED'
                if ext_call.return_data[0] != 1:
                    revert with 0, 'RECOVER_TOKEN_TRANSFER_FAILED'
            emit RecoverToVault(0, address(ext_call.return_data[0]), arg1);
        else:
            call arg1.0xa9059cbb with:
                 gas gas_remaining wei
                args address(ext_call.return_data[0]) << 64, 0, ext_call.return_data[0]
            if ext_call.success <= 0:
                revert with 0, 'RECOVER_TOKEN_TRANSFER_FAILED'
            if return_data.size:
                if 32 != return_data.size:
                    revert with 0, 'RECOVER_TOKEN_TRANSFER_FAILED'
                if ext_call.return_data[0] != 1:
                    revert with 0, 'RECOVER_TOKEN_TRANSFER_FAILED'
            emit RecoverToVault(ext_call.return_data[0], address(ext_call.return_data[0]), arg1);
}

function canExecute(uint256 arg1) {
    if arg1 >= votesLength:
        revert with 0, 'VOTING_NO_VOTE'
    if not voterState[arg1].field_0:
        if voterState[arg1].field_1024:
            if not voterState[arg1].field_512:
                require voterState[arg1].field_1024
                if 0 / voterState[arg1].field_1024 > voterState[arg1].field_136:
                    return 1
            else:
                if 10^18 * voterState[arg1].field_512 / voterState[arg1].field_512 != 10^18:
                    revert with 0, 'MATH_MUL_OVERFLOW'
                require voterState[arg1].field_1024
                if 10^18 * voterState[arg1].field_512 / voterState[arg1].field_1024 > voterState[arg1].field_136:
                    return 1
        if uint64(voteTime + voterState[arg1].field_8) < voterState[arg1].field_8:
            revert with 0, 'MATH64_ADD_OVERFLOW'
        if block.timestamp > test266151307():
            revert with 0, 'UINT64_NUMBER_TOO_BIG'
        if uint64(block.timestamp) >= uint64(voteTime + voterState[arg1].field_8):
            if voterState[arg1].field_768 + voterState[arg1].field_512 < voterState[arg1].field_512:
                revert with 0, 'MATH_ADD_OVERFLOW'
            if voterState[arg1].field_768 + voterState[arg1].field_512:
                if not voterState[arg1].field_512:
                    require voterState[arg1].field_768 + voterState[arg1].field_512
                    if 0 / voterState[arg1].field_768 + voterState[arg1].field_512 > voterState[arg1].field_136:
                        if voterState[arg1].field_1024:
                            if not voterState[arg1].field_512:
                                require voterState[arg1].field_1024
                                if 0 / voterState[arg1].field_1024 > voterState[arg1].field_256:
                                    return 1
                            else:
                                if 10^18 * voterState[arg1].field_512 / voterState[arg1].field_512 != 10^18:
                                    revert with 0, 'MATH_MUL_OVERFLOW'
                                require voterState[arg1].field_1024
                                if 10^18 * voterState[arg1].field_512 / voterState[arg1].field_1024 > voterState[arg1].field_256:
                                    return 1
                else:
                    if 10^18 * voterState[arg1].field_512 / voterState[arg1].field_512 != 10^18:
                        revert with 0, 'MATH_MUL_OVERFLOW'
                    require voterState[arg1].field_768 + voterState[arg1].field_512
                    if 10^18 * voterState[arg1].field_512 / voterState[arg1].field_768 + voterState[arg1].field_512 > voterState[arg1].field_136:
                        if voterState[arg1].field_1024:
                            if not voterState[arg1].field_512:
                                require voterState[arg1].field_1024
                                if 0 / voterState[arg1].field_1024 > voterState[arg1].field_256:
                                    return 1
                            else:
                                if 10^18 * voterState[arg1].field_512 / voterState[arg1].field_512 != 10^18:
                                    revert with 0, 'MATH_MUL_OVERFLOW'
                                require voterState[arg1].field_1024
                                if 10^18 * voterState[arg1].field_512 / voterState[arg1].field_1024 > voterState[arg1].field_256:
                                    return 1
        else:
            if voterState[arg1].field_0:
                if voterState[arg1].field_768 + voterState[arg1].field_512 < voterState[arg1].field_512:
                    revert with 0, 'MATH_ADD_OVERFLOW'
                if voterState[arg1].field_768 + voterState[arg1].field_512:
                    if not voterState[arg1].field_512:
                        require voterState[arg1].field_768 + voterState[arg1].field_512
                        if 0 / voterState[arg1].field_768 + voterState[arg1].field_512 > voterState[arg1].field_136:
                            if voterState[arg1].field_1024:
                                if not voterState[arg1].field_512:
                                    require voterState[arg1].field_1024
                                    if 0 / voterState[arg1].field_1024 > voterState[arg1].field_256:
                                        return 1
                                else:
                                    if 10^18 * voterState[arg1].field_512 / voterState[arg1].field_512 != 10^18:
                                        revert with 0, 'MATH_MUL_OVERFLOW'
                                    require voterState[arg1].field_1024
                                    if 10^18 * voterState[arg1].field_512 / voterState[arg1].field_1024 > voterState[arg1].field_256:
                                        return 1
                    else:
                        if 10^18 * voterState[arg1].field_512 / voterState[arg1].field_512 != 10^18:
                            revert with 0, 'MATH_MUL_OVERFLOW'
                        require voterState[arg1].field_768 + voterState[arg1].field_512
                        if 10^18 * voterState[arg1].field_512 / voterState[arg1].field_768 + voterState[arg1].field_512 > voterState[arg1].field_136:
                            if voterState[arg1].field_1024:
                                if not voterState[arg1].field_512:
                                    require voterState[arg1].field_1024
                                    if 0 / voterState[arg1].field_1024 > voterState[arg1].field_256:
                                        return 1
                                else:
                                    if 10^18 * voterState[arg1].field_512 / voterState[arg1].field_512 != 10^18:
                                        revert with 0, 'MATH_MUL_OVERFLOW'
                                    require voterState[arg1].field_1024
                                    if 10^18 * voterState[arg1].field_512 / voterState[arg1].field_1024 > voterState[arg1].field_256:
                                        return 1
        return 0
    else:
        return 0
}



}
