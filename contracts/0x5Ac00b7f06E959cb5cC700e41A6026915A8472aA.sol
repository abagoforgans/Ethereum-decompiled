contract main {




// =====================  Runtime code  =====================


const sub_4c54b8c1(?) = sha3(Mask(200, 56, 'MODIFY_PARTICIPATION_ROLE') >> 56)

const allowRecoverability(address arg1) = 1

const sub_a83efef6(?) = sha3(Mask(152, 104, 'CREATE_SURVEYS_ROLE') >> 104)

const sub_bc6a48e9(?) = 0

const PCT_BASE = 10^18


uint64 sub_1128915c; offset 160
address tokenAddress;
uint64 sub_8cb4eb41;
mapping of struct survey;
uint256 sub_fb71098c;
address kernelAddress;
uint256 appId;
uint256 initializationBlock;

function sub_1128915c(?) {
    return sub_1128915c
}

function appId() {
    return appId
}

function getSurvey(uint256 arg1) {
    if arg1 >= sub_fb71098c:
        revert with 0, 'SURVEY_NO_SURVEY'
    if uint64(sub_8cb4eb41 + survey[arg1].field_0) < survey[arg1].field_0:
        revert with 0, 'MATH64_ADD_OVERFLOW'
    if block.timestamp > test266151307():
        revert with 0, 'UINT64_NUMBER_TOO_BIG'
    return uint64(block.timestamp) < uint64(sub_8cb4eb41 + survey[arg1].field_0), 
           survey[arg1].field_0,
           survey[arg1].field_0,
           survey[arg1].field_0,
           survey[arg1].field_512,
           survey[arg1].field_768,
           survey[arg1].field_256
}

function getInitializationBlock() {
    return initializationBlock
}

function sub_8cb4eb41(?) {
    return sub_8cb4eb41
}

function getOptionPower(uint256 arg1, uint256 arg2) {
    if arg1 >= sub_fb71098c:
        revert with 0, 'SURVEY_NO_SURVEY'
    if arg2 > survey[arg1].field_256:
        revert with 0, 'SURVEY_NO_OPTION'
    return survey[arg1][4][arg2].field_0
}

function kernel() {
    return kernelAddress
}

function sub_fb71098c(?) {
    return sub_fb71098c
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

function initialize(address arg1, uint64 arg2, uint64 arg3) {
    if initializationBlock:
        revert with 0, 'INIT_ALREADY_INITIALIZED'
    if arg2 <= 0:
        revert with 0, 'SURVEY_MIN_PARTICIPATION'
    if arg2 > 10^18:
        revert with 0, 'SURVEY_MIN_PARTICIPATION'
    if initializationBlock:
        revert with 0, 'INIT_ALREADY_INITIALIZED'
    initializationBlock = block.number
    tokenAddress = arg1
    sub_1128915c = arg2
    sub_8cb4eb41 = arg3
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

function isParticipationAchieved(uint256 arg1) {
    if arg1 >= sub_fb71098c:
        revert with 0, 'SURVEY_NO_SURVEY'
    if not survey[arg1].field_768:
        if survey[arg1].field_512:
            return 0 / survey[arg1].field_512 >= survey[arg1].field_128
    else:
        if 10^18 * survey[arg1].field_768 / survey[arg1].field_768 != 10^18:
            revert with 0, 'MATH_MUL_OVERFLOW'
        if survey[arg1].field_512:
            return 10^18 * survey[arg1].field_768 / survey[arg1].field_512 >= survey[arg1].field_128
    ('iszero', ('field', 512, ('stor', ('map', ('param', 'arg1'), ('name', 'survey', 2)))))
    revert
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

function canVote(uint256 arg1, address arg2) {
    if arg1 >= sub_fb71098c:
        revert with 0, 'SURVEY_NO_SURVEY'
    if uint64(sub_8cb4eb41 + survey[arg1].field_0) < survey[arg1].field_0:
        revert with 0, 'MATH64_ADD_OVERFLOW'
    if block.timestamp > test266151307():
        revert with 0, 'UINT64_NUMBER_TOO_BIG'
    if uint64(block.timestamp) >= uint64(sub_8cb4eb41 + survey[arg1].field_0):
        return (uint64(block.timestamp) < uint64(sub_8cb4eb41 + survey[arg1].field_0))
    require ext_code.size(tokenAddress)
    call tokenAddress.balanceOfAt(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args address(arg2), survey[arg1].field_64
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return (ext_call.return_data[0] > 0)
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

function changeMinAcceptParticipationPct(uint64 arg1) {
    if not initializationBlock:
        revert with 0, 'APP_AUTH_FAILED'
    if block.number < initializationBlock:
        revert with 0, 'APP_AUTH_FAILED'
    if not kernelAddress:
        revert with 0, 'APP_AUTH_FAILED'
    require ext_code.size(kernelAddress)
    call kernelAddress.hasPermission(address arg1, address arg2, bytes32 arg3, bytes arg4) with:
         gas gas_remaining wei
        args msg.sender, address(this.address), sha3('MODIFY_PARTICIPATION_ROLE'), 128, 64, arg1 << 192, sub_1128915c
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        revert with 0, 'APP_AUTH_FAILED'
    if arg1 <= 0:
        revert with 0, 'SURVEY_MIN_PARTICIPATION'
    if arg1 > 10^18:
        revert with 0, 'SURVEY_MIN_PARTICIPATION'
    sub_1128915c = arg1
    emit ChangeMinParticipation(arg1);
}

function newSurvey(string arg1, uint256 arg2) {
    if not initializationBlock:
        revert with 0, 'APP_AUTH_FAILED'
    if block.number < initializationBlock:
        revert with 0, 'APP_AUTH_FAILED'
    if not kernelAddress:
        revert with 0, 'APP_AUTH_FAILED'
    require ext_code.size(kernelAddress)
    call kernelAddress.hasPermission(address arg1, address arg2, bytes32 arg3, bytes arg4) with:
         gas gas_remaining wei
        args msg.sender, address(this.address), sha3('CREATE_SURVEYS_ROLE'), 128, 0
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        revert with 0, 'APP_AUTH_FAILED'
    if block.number > test266151307():
        revert with 0, '', 21, Mask(168, 0, 'UINT64_NUMBER_TOO_BIG')
    require ext_code.size(tokenAddress)
    call tokenAddress.totalSupplyAt(uint256 arg1) with:
         gas gas_remaining wei
        args uint64(block.number - 1)
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] <= 0:
        revert with 0, 'SURVEY_NO_VOTING_POWER'
    sub_fb71098c++
    if block.timestamp > test266151307():
        revert with 0, 'UINT64_NUMBER_TOO_BIG'
    survey[stor3].field_0 = uint64(block.timestamp)
    survey[stor3].field_64 = uint64(block.number - 1)
    survey[stor3].field_0 = uint64(block.timestamp)
    survey[stor3].field_64 = uint64(block.number - 1)
    survey[stor3].field_128 = sub_1128915c
    survey[stor3].field_256 = arg2
    survey[stor3].field_512 = ext_call.return_data[0]
    emit StartSurvey(Array(len=arg1.length, data=arg1[all]), sub_fb71098c, msg.sender);
    return sub_fb71098c
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

function getVoterState(uint256 arg1, address arg2) {
    if arg1 >= sub_fb71098c:
        revert with 0, 'SURVEY_NO_SURVEY'
    if not survey[arg1][5][address(arg2)].field_0:
        return 64, 96, 0, 0
    if not survey[arg1][5][address(arg2)].field_0 + 1:
        mem[(32 * survey[arg1][5][address(arg2)].field_0 + 1) + 192] = survey[arg1][5][address(arg2)].field_0 + 1
    else:
        mem[192 len 32 * survey[arg1][5][address(arg2)].field_0 + 1] = code.data[13431 len 32 * survey[arg1][5][address(arg2)].field_0 + 1]
        mem[(32 * survey[arg1][5][address(arg2)].field_0 + 1) + 192] = survey[arg1][5][address(arg2)].field_0 + 1
        mem[(32 * survey[arg1][5][address(arg2)].field_0 + 1) + 224 len 32 * survey[arg1][5][address(arg2)].field_0 + 1] = code.data[13431 len 32 * survey[arg1][5][address(arg2)].field_0 + 1]
    idx = 0
    while idx <= survey[arg1][5][address(arg2)].field_0:
        require idx < survey[arg1][5][address(arg2)].field_0 + 1
        mem[(32 * idx) + 192] = survey[arg1][5][address(arg2)][1][idx].field_0
        mem[0] = idx
        mem[32] = sha3(address(arg2), sha3(arg1, 2) + 5) + 1
        require idx < mem[(32 * survey[arg1][5][address(arg2)].field_0 + 1) + 192]
        mem[(32 * survey[arg1][5][address(arg2)].field_0 + 1) + (32 * idx) + 224] = survey[arg1][5][address(arg2)][1][idx].field_256
        idx = idx + 1
        continue 
    mem[(64 * survey[arg1][5][address(arg2)].field_0 + 1) + 288] = survey[arg1][5][address(arg2)].field_0 + 1
    mem[(64 * survey[arg1][5][address(arg2)].field_0 + 1) + 320 len floor32(survey[arg1][5][address(arg2)].field_0 + 1)] = mem[192 len floor32(survey[arg1][5][address(arg2)].field_0 + 1)]
    mem[(98 * survey[arg1][5][address(arg2)].field_0) + 418] = mem[(32 * survey[arg1][5][address(arg2)].field_0 + 1) + 192]
    mem[(98 * survey[arg1][5][address(arg2)].field_0) + 450 len floor32(mem[(32 * survey[arg1][5][address(arg2)].field_0 + 1) + 192])] = mem[(32 * survey[arg1][5][address(arg2)].field_0 + 1) + 224 len floor32(mem[(32 * survey[arg1][5][address(arg2)].field_0 + 1) + 192])]
    return Array(len=survey[arg1][5][address(arg2)].field_0 + 1, data=mem[192 len floor32(survey[arg1][5][address(arg2)].field_0 + 1)], mem[(64 * survey[arg1][5][address(arg2)].field_0 + 1) + floor32(survey[arg1][5][address(arg2)].field_0 + 1) + 320 len (98 * survey[arg1][5][address(arg2)].field_0) + -(64 * survey[arg1][5][address(arg2)].field_0 + 1) + -floor32(survey[arg1][5][address(arg2)].field_0 + 1) + 98], mem[(32 * survey[arg1][5][address(arg2)].field_0 + 1) + 192], mem[(98 * survey[arg1][5][address(arg2)].field_0) + 450 len (32 * mem[(32 * survey[arg1][5][address(arg2)].field_0 + 1) + 192]) + (63 * survey[arg1][5][address(arg2)].field_0) + (64 * survey[arg1][5][address(arg2)].field_0 + 1) + 63]), 
           (32 * survey[arg1][5][address(arg2)].field_0 + 1) + 96
}

function resetVote(uint256 arg1) {
    mem[96] = 16
    mem[128] = 'SURVEY_NO_SURVEY'
    if arg1 >= sub_fb71098c:
        revert with 0, 'SURVEY_NO_SURVEY'
    mem[160] = 16
    mem[192] = 'SURVEY_NO_SURVEY'
    mem[224] = 19
    mem[256] = 'MATH64_ADD_OVERFLOW'
    if uint64(sub_8cb4eb41 + survey[arg1].field_0) < survey[arg1].field_0:
        revert with 0, 'MATH64_ADD_OVERFLOW'
    mem[288] = 21
    mem[320] = 'UINT64_NUMBER_TOO_BIG'
    if block.timestamp > test266151307():
        revert with 0, 'UINT64_NUMBER_TOO_BIG'
    if uint64(block.timestamp) >= uint64(sub_8cb4eb41 + survey[arg1].field_0):
        revert with 0, 'SURVEY_CAN_NOT_VOTE'
    mem[388] = survey[arg1].field_64
    require ext_code.size(tokenAddress)
    call tokenAddress.balanceOfAt(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args msg.sender, survey[arg1].field_64
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    mem[64] = 416
    mem[352] = 19
    mem[384] = 'SURVEY_CAN_NOT_VOTE'
    if ext_call.return_data[0] <= 0:
        revert with 0, 'SURVEY_CAN_NOT_VOTE'
    mem[32] = sha3(arg1, 2) + 5
    if 0 < survey[arg1][5][msg.sender].field_0:
        s = 0
        s = 0
        s = 0
        idx = 1
        while idx <= survey[arg1][5][msg.sender].field_0:
            mem[0] = survey[arg1][5][msg.sender][1][idx].field_0
            mem[32] = sha3(arg1, 2) + 4
            _127 = mem[64]
            mem[64] = mem[64] + 64
            mem[_127] = 18
            mem[_127 + 32] = 'MATH_SUB_UNDERFLOW'
            if survey[arg1][5][msg.sender][1][idx].field_256 > survey[arg1][4][survey[arg1][5][msg.sender][1][idx].field_0].field_0:
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 18
                mem[mem[64] + 68] = 'MATH_SUB_UNDERFLOW'
                idx = 32
                while idx < 18:
                    mem[idx + mem[64] + 68] = mem[idx + _127 + 32]
                    idx = idx + 32
                    continue 
                revert with 0, 'MATH_SUB_UNDERFLOW'
            mem[0] = survey[arg1][5][msg.sender][1][idx].field_0
            mem[32] = sha3(arg1, 2) + 4
            survey[arg1][4][survey[arg1][5][msg.sender][1][idx].field_0].field_0 -= survey[arg1][5][msg.sender][1][idx].field_256
            mem[mem[64]] = survey[arg1][5][msg.sender][1][idx].field_0
            mem[mem[64] + 32] = survey[arg1][5][msg.sender][1][idx].field_256
            mem[mem[64] + 64] = survey[arg1][4][survey[arg1][5][msg.sender][1][idx].field_0].field_0 - survey[arg1][5][msg.sender][1][idx].field_256
            emit ResetVote(survey[arg1][5][msg.sender][1][idx].field_0, survey[arg1][5][msg.sender][1][idx].field_256, survey[arg1][4][survey[arg1][5][msg.sender][1][idx].field_0].field_0 - survey[arg1][5][msg.sender][1][idx].field_256, arg1, msg.sender);
            s = survey[arg1][4][survey[arg1][5][msg.sender][1][idx].field_0].field_0 - survey[arg1][5][msg.sender][1][idx].field_256
            s = survey[arg1][4][survey[arg1][5][msg.sender][1][idx].field_0].field_0
            s = sha3(idx, sha3(msg.sender, sha3(arg1, 2) + 5) + 1)
            idx = idx + 1
            continue 
        require ext_code.size(tokenAddress)
        call tokenAddress.balanceOfAt(address arg1, uint256 arg2) with:
             gas gas_remaining wei
            args msg.sender, survey[arg1].field_64
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if survey[arg1][5][msg.sender][1][0].field_256 > ext_call.return_data[0]:
            revert with 0, 'MATH_SUB_UNDERFLOW'
        if ext_call.return_data[0] - survey[arg1][5][msg.sender][1][0].field_256 > survey[arg1].field_768:
            revert with 0, 'MATH_SUB_UNDERFLOW'
        survey[arg1].field_768 = survey[arg1].field_768 - ext_call.return_data[0] + survey[arg1][5][msg.sender][1][0].field_256
        survey[arg1][5][msg.sender].field_0 = 0
}

function voteOption(uint256 arg1, uint256 arg2) {
    mem[96] = 16
    mem[128] = 'SURVEY_NO_SURVEY'
    if arg1 >= sub_fb71098c:
        revert with 0, 'SURVEY_NO_SURVEY'
    mem[160] = 16
    mem[192] = 'SURVEY_NO_SURVEY'
    mem[224] = 19
    mem[256] = 'MATH64_ADD_OVERFLOW'
    if uint64(sub_8cb4eb41 + survey[arg1].field_0) < survey[arg1].field_0:
        revert with 0, 'MATH64_ADD_OVERFLOW'
    mem[288] = 21
    mem[320] = 'UINT64_NUMBER_TOO_BIG'
    if block.timestamp > test266151307():
        revert with 0, 'UINT64_NUMBER_TOO_BIG'
    if uint64(block.timestamp) >= uint64(sub_8cb4eb41 + survey[arg1].field_0):
        revert with 0, 'SURVEY_CAN_NOT_VOTE'
    require ext_code.size(tokenAddress)
    call tokenAddress.balanceOfAt(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args msg.sender, survey[arg1].field_64
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    mem[352] = 19
    mem[384] = 'SURVEY_CAN_NOT_VOTE'
    if ext_call.return_data[0] <= 0:
        revert with 0, 'SURVEY_CAN_NOT_VOTE'
    require ext_code.size(tokenAddress)
    call tokenAddress.balanceOfAt(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args msg.sender, survey[arg1].field_64
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    mem[416] = 1
    mem[480] = 1
    mem[64] = 544
    mem[448] = arg2
    mem[512] = ext_call.return_data[0]
    mem[32] = sha3(arg1, 2) + 5
    if 0 >= survey[arg1][5][msg.sender].field_0:
        mem[64] = 608
        mem[544] = 0
        mem[576] = 0
        mem[0] = 0
        mem[32] = sha3(msg.sender, sha3(arg1, 2) + 5) + 1
        survey[arg1][5][msg.sender][1][0].field_0 = 0
        survey[arg1][5][msg.sender][1][0].field_256 = 0
        s = 0
        s = 0
        idx = 1
        s = 0
        while idx <= 1:
            require idx - 1 < mem[416]
            _384 = mem[(32 * idx - 1) + 448]
            require idx - 1 < mem[480]
            _397 = mem[(32 * idx - 1) + 512]
            if not mem[(32 * idx - 1) + 448]:
                _407 = mem[64]
                mem[64] = mem[64] + 64
                mem[_407] = 24
                mem[_407 + 32] = 'SURVEY_VOTE_WRONG_OPTION'
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 24
                mem[mem[64] + 68] = 'SURVEY_VOTE_WRONG_OPTION'
                idx = 32
                while idx < 24:
                    mem[idx + mem[64] + 68] = mem[idx + _407 + 32]
                    idx = idx + 32
                    continue 
                revert with 0, 'SURVEY_VOTE_WRONG_OPTION'
            _418 = mem[64]
            mem[64] = mem[64] + 64
            mem[_418] = 24
            mem[_418 + 32] = 'SURVEY_VOTE_WRONG_OPTION'
            if _384 > survey[arg1].field_256:
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 24
                mem[mem[64] + 68] = 'SURVEY_VOTE_WRONG_OPTION'
                idx = 32
                while idx < 24:
                    mem[idx + mem[64] + 68] = mem[idx + _418 + 32]
                    idx = idx + 32
                    continue 
                revert with 0, 'SURVEY_VOTE_WRONG_OPTION'
            _426 = mem[64]
            mem[64] = mem[64] + 64
            mem[_426] = 15
            mem[_426 + 32] = 'SURVEY_NO_STAKE'
            if _397 <= 0:
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 15
                mem[mem[64] + 68] = 'SURVEY_NO_STAKE'
                idx = 32
                while idx < 15:
                    mem[idx + mem[64] + 68] = mem[idx + _426 + 32]
                    idx = idx + 32
                    continue 
                revert with 0, 'SURVEY_NO_STAKE'
            mem[0] = idx - 1
            mem[32] = sha3(msg.sender, sha3(arg1, 2) + 5) + 1
            _441 = mem[64]
            mem[64] = mem[64] + 64
            mem[_441] = 26
            mem[_441 + 32] = 'SURVEY_OPTIONS_NOT_ORDERED'
            if _384 <= survey[arg1][5][msg.sender][1][idx - 1].field_0:
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 26
                mem[mem[64] + 68] = 'SURVEY_OPTIONS_NOT_ORDERED'
                idx = 32
                while idx < 26:
                    mem[idx + mem[64] + 68] = mem[idx + _441 + 32]
                    idx = idx + 32
                    continue 
                revert with 0, 'SURVEY_OPTIONS_NOT_ORDERED'
            _454 = mem[64]
            mem[64] = mem[64] + 64
            mem[_454] = _384
            mem[_454 + 32] = _397
            survey[arg1][5][msg.sender][1][idx].field_0 = _384
            survey[arg1][5][msg.sender][1][idx].field_256 = _397
            mem[0] = _384
            mem[32] = sha3(arg1, 2) + 4
            _476 = mem[64]
            mem[64] = mem[64] + 64
            mem[_476] = 17
            mem[_476 + 32] = 'MATH_ADD_OVERFLOW'
            if _397 + survey[arg1][4][_384].field_0 < survey[arg1][4][_384].field_0:
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 17
                mem[mem[64] + 68] = 'MATH_ADD_OVERFLOW'
                idx = 32
                while idx < 17:
                    mem[idx + mem[64] + 68] = mem[idx + _476 + 32]
                    idx = idx + 32
                    continue 
                revert with 0, 'MATH_ADD_OVERFLOW'
            mem[0] = _384
            mem[32] = sha3(arg1, 2) + 4
            survey[arg1][4][_384].field_0 += _397
            _532 = mem[64]
            mem[64] = mem[64] + 64
            mem[_532] = 17
            mem[_532 + 32] = 'MATH_ADD_OVERFLOW'
            if _397 + s < s:
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 17
                mem[mem[64] + 68] = 'MATH_ADD_OVERFLOW'
                idx = 32
                while idx < 17:
                    mem[idx + mem[64] + 68] = mem[idx + _532 + 32]
                    idx = idx + 32
                    continue 
                revert with 0, 'MATH_ADD_OVERFLOW'
            mem[0] = _384
            mem[32] = sha3(arg1, 2) + 4
            mem[mem[64]] = _384
            mem[mem[64] + 32] = _397
            mem[mem[64] + 64] = survey[arg1][4][_384].field_0
            emit CastVote(_384, _397, survey[arg1][4][_384].field_0, arg1, msg.sender);
            s = _397
            s = _384
            idx = idx + 1
            s = _397 + s
            continue 
    else:
        s = 0
        s = 0
        s = 0
        idx = 1
        while idx <= survey[arg1][5][msg.sender].field_0:
            mem[0] = survey[arg1][5][msg.sender][1][idx].field_0
            mem[32] = sha3(arg1, 2) + 4
            _386 = mem[64]
            mem[64] = mem[64] + 64
            mem[_386] = 18
            mem[_386 + 32] = 'MATH_SUB_UNDERFLOW'
            if survey[arg1][5][msg.sender][1][idx].field_256 > survey[arg1][4][survey[arg1][5][msg.sender][1][idx].field_0].field_0:
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 18
                mem[mem[64] + 68] = 'MATH_SUB_UNDERFLOW'
                idx = 32
                while idx < 18:
                    mem[idx + mem[64] + 68] = mem[idx + _386 + 32]
                    idx = idx + 32
                    continue 
                revert with 0, 'MATH_SUB_UNDERFLOW'
            mem[0] = survey[arg1][5][msg.sender][1][idx].field_0
            mem[32] = sha3(arg1, 2) + 4
            survey[arg1][4][survey[arg1][5][msg.sender][1][idx].field_0].field_0 -= survey[arg1][5][msg.sender][1][idx].field_256
            mem[mem[64]] = survey[arg1][5][msg.sender][1][idx].field_0
            mem[mem[64] + 32] = survey[arg1][5][msg.sender][1][idx].field_256
            mem[mem[64] + 64] = survey[arg1][4][survey[arg1][5][msg.sender][1][idx].field_0].field_0 - survey[arg1][5][msg.sender][1][idx].field_256
            emit ResetVote(survey[arg1][5][msg.sender][1][idx].field_0, survey[arg1][5][msg.sender][1][idx].field_256, survey[arg1][4][survey[arg1][5][msg.sender][1][idx].field_0].field_0 - survey[arg1][5][msg.sender][1][idx].field_256, arg1, msg.sender);
            s = survey[arg1][4][survey[arg1][5][msg.sender][1][idx].field_0].field_0 - survey[arg1][5][msg.sender][1][idx].field_256
            s = survey[arg1][4][survey[arg1][5][msg.sender][1][idx].field_0].field_0
            s = sha3(idx, sha3(msg.sender, sha3(arg1, 2) + 5) + 1)
            idx = idx + 1
            continue 
        mem[mem[64] + 4] = msg.sender
        mem[mem[64] + 36] = survey[arg1].field_64
        require ext_code.size(tokenAddress)
        call tokenAddress.balanceOfAt(address arg1, uint256 arg2) with:
             gas gas_remaining wei
            args msg.sender, survey[arg1].field_64
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        mem[0] = 0
        mem[32] = sha3(msg.sender, sha3(arg1, 2) + 5) + 1
        _419 = mem[64]
        mem[64] = mem[64] + 64
        mem[_419] = 18
        mem[_419 + 32] = 'MATH_SUB_UNDERFLOW'
        if survey[arg1][5][msg.sender][1][0].field_256 > ext_call.return_data[0]:
            revert with 0, 'MATH_SUB_UNDERFLOW'
        _465 = mem[64]
        mem[64] = mem[64] + 64
        mem[_465] = 18
        mem[_465 + 32] = 'MATH_SUB_UNDERFLOW'
        if ext_call.return_data[0] - survey[arg1][5][msg.sender][1][0].field_256 > survey[arg1].field_768:
            revert with 0, 'MATH_SUB_UNDERFLOW'
        survey[arg1].field_768 = survey[arg1].field_768 - ext_call.return_data[0] + survey[arg1][5][msg.sender][1][0].field_256
        mem[0] = msg.sender
        mem[32] = sha3(arg1, 2) + 5
        survey[arg1][5][msg.sender].field_0 = 0
        _524 = mem[64]
        mem[64] = mem[64] + 64
        mem[_524] = 0
        mem[_524 + 32] = 0
        mem[0] = 0
        mem[32] = sha3(msg.sender, sha3(arg1, 2) + 5) + 1
        survey[arg1][5][msg.sender][1][0].field_0 = 0
        survey[arg1][5][msg.sender][1][0].field_256 = 0
        _674 = mem[416]
        s = 0
        s = 0
        idx = 1
        s = 0
        while idx <= _674:
            require idx - 1 < mem[416]
            _705 = mem[(32 * idx - 1) + 448]
            require idx - 1 < mem[480]
            _722 = mem[(32 * idx - 1) + 512]
            if not mem[(32 * idx - 1) + 448]:
                _727 = mem[64]
                mem[64] = mem[64] + 64
                mem[_727] = 24
                mem[_727 + 32] = 'SURVEY_VOTE_WRONG_OPTION'
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 24
                mem[mem[64] + 68] = 'SURVEY_VOTE_WRONG_OPTION'
                idx = 32
                while idx < 24:
                    mem[idx + mem[64] + 68] = mem[idx + _727 + 32]
                    idx = idx + 32
                    continue 
                revert with 0, 'SURVEY_VOTE_WRONG_OPTION'
            _732 = mem[64]
            mem[64] = mem[64] + 64
            mem[_732] = 24
            mem[_732 + 32] = 'SURVEY_VOTE_WRONG_OPTION'
            if _705 > survey[arg1].field_256:
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 24
                mem[mem[64] + 68] = 'SURVEY_VOTE_WRONG_OPTION'
                idx = 32
                while idx < 24:
                    mem[idx + mem[64] + 68] = mem[idx + _732 + 32]
                    idx = idx + 32
                    continue 
                revert with 0, 'SURVEY_VOTE_WRONG_OPTION'
            _737 = mem[64]
            mem[64] = mem[64] + 64
            mem[_737] = 15
            mem[_737 + 32] = 'SURVEY_NO_STAKE'
            if _722 <= 0:
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 15
                mem[mem[64] + 68] = 'SURVEY_NO_STAKE'
                idx = 32
                while idx < 15:
                    mem[idx + mem[64] + 68] = mem[idx + _737 + 32]
                    idx = idx + 32
                    continue 
                revert with 0, 'SURVEY_NO_STAKE'
            mem[0] = idx - 1
            mem[32] = sha3(msg.sender, sha3(arg1, 2) + 5) + 1
            _747 = mem[64]
            mem[64] = mem[64] + 64
            mem[_747] = 26
            mem[_747 + 32] = 'SURVEY_OPTIONS_NOT_ORDERED'
            if _705 <= survey[arg1][5][msg.sender][1][idx - 1].field_0:
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 26
                mem[mem[64] + 68] = 'SURVEY_OPTIONS_NOT_ORDERED'
                idx = 32
                while idx < 26:
                    mem[idx + mem[64] + 68] = mem[idx + _747 + 32]
                    idx = idx + 32
                    continue 
                revert with 0, 'SURVEY_OPTIONS_NOT_ORDERED'
            _757 = mem[64]
            mem[64] = mem[64] + 64
            mem[_757] = _705
            mem[_757 + 32] = _722
            survey[arg1][5][msg.sender][1][idx].field_0 = _705
            survey[arg1][5][msg.sender][1][idx].field_256 = _722
            mem[0] = _705
            mem[32] = sha3(arg1, 2) + 4
            _775 = mem[64]
            mem[64] = mem[64] + 64
            mem[_775] = 17
            mem[_775 + 32] = 'MATH_ADD_OVERFLOW'
            if _722 + survey[arg1][4][_705].field_0 < survey[arg1][4][_705].field_0:
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 17
                mem[mem[64] + 68] = 'MATH_ADD_OVERFLOW'
                idx = 32
                while idx < 17:
                    mem[idx + mem[64] + 68] = mem[idx + _775 + 32]
                    idx = idx + 32
                    continue 
                revert with 0, 'MATH_ADD_OVERFLOW'
            mem[0] = _705
            mem[32] = sha3(arg1, 2) + 4
            survey[arg1][4][_705].field_0 += _722
            _813 = mem[64]
            mem[64] = mem[64] + 64
            mem[_813] = 17
            mem[_813 + 32] = 'MATH_ADD_OVERFLOW'
            if _722 + s < s:
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 17
                mem[mem[64] + 68] = 'MATH_ADD_OVERFLOW'
                idx = 32
                while idx < 17:
                    mem[idx + mem[64] + 68] = mem[idx + _813 + 32]
                    idx = idx + 32
                    continue 
                revert with 0, 'MATH_ADD_OVERFLOW'
            mem[0] = _705
            mem[32] = sha3(arg1, 2) + 4
            mem[mem[64]] = _705
            mem[mem[64] + 32] = _722
            mem[mem[64] + 64] = survey[arg1][4][_705].field_0
            emit CastVote(_705, _722, survey[arg1][4][_705].field_0, arg1, msg.sender);
            s = _722
            s = _705
            idx = idx + 1
            s = _722 + s
            continue 
    mem[mem[64] + 36] = survey[arg1].field_64
    require ext_code.size(tokenAddress)
    call tokenAddress.balanceOfAt(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args msg.sender, survey[arg1].field_64
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    mem[mem[64]] = 18
    mem[mem[64] + 32] = 'MATH_SUB_UNDERFLOW'
    if s > ext_call.return_data[0]:
        revert with 0, 'MATH_SUB_UNDERFLOW'
    survey[arg1][5][msg.sender][1][0].field_256 = ext_call.return_data[0] - s
    survey[arg1][5][msg.sender].field_0 = mem[416]
    if s + survey[arg1].field_768 < survey[arg1].field_768:
        revert with 0, 'MATH_ADD_OVERFLOW'
    survey[arg1].field_768 += s
    require survey[arg1].field_512 >= s + survey[arg1].field_768
}

function voteOptions(uint256 arg1, uint256[] arg2, uint256[] arg3) {
    mem[96] = 16
    mem[128] = 'SURVEY_NO_SURVEY'
    if arg1 >= sub_fb71098c:
        revert with 0, 'SURVEY_NO_SURVEY'
    if arg3.length != arg2.length:
        revert with 0, 'SURVEY_VOTE_WRONG_INPUT'
    mem[160] = 23
    mem[192] = 'SURVEY_VOTE_WRONG_INPUT'
    if arg2.length <= 0:
        revert with 0, 'SURVEY_VOTE_WRONG_INPUT'
    mem[224] = 16
    mem[256] = 'SURVEY_NO_SURVEY'
    if arg1 >= sub_fb71098c:
        revert with 0, 'SURVEY_NO_SURVEY'
    mem[288] = 19
    mem[320] = 'MATH64_ADD_OVERFLOW'
    if uint64(sub_8cb4eb41 + survey[arg1].field_0) < survey[arg1].field_0:
        revert with 0, 'MATH64_ADD_OVERFLOW'
    mem[352] = 21
    mem[384] = 'UINT64_NUMBER_TOO_BIG'
    if block.timestamp > test266151307():
        revert with 0, 'UINT64_NUMBER_TOO_BIG'
    if uint64(block.timestamp) >= uint64(sub_8cb4eb41 + survey[arg1].field_0):
        revert with 0, 'SURVEY_CAN_NOT_VOTE'
    require ext_code.size(tokenAddress)
    call tokenAddress.balanceOfAt(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args msg.sender, survey[arg1].field_64
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    mem[416] = 19
    mem[448] = 'SURVEY_CAN_NOT_VOTE'
    if ext_call.return_data[0] <= 0:
        revert with 0, 'SURVEY_CAN_NOT_VOTE'
    mem[480] = arg2.length
    mem[512 len 32 * arg2.length] = call.data[arg2 + 36 len 32 * arg2.length]
    mem[64] = (32 * arg3.length) + (32 * arg2.length) + 544
    mem[(32 * arg2.length) + 512] = arg3.length
    mem[(32 * arg2.length) + 544 len 32 * arg3.length] = call.data[arg3 + 36 len 32 * arg3.length]
    mem[32] = sha3(arg1, 2) + 5
    if 0 >= survey[arg1][5][msg.sender].field_0:
        mem[64] = (32 * arg3.length) + (32 * arg2.length) + 608
        mem[(32 * arg3.length) + (32 * arg2.length) + 544] = 0
        mem[(32 * arg3.length) + (32 * arg2.length) + 576] = 0
        mem[0] = 0
        mem[32] = sha3(msg.sender, sha3(arg1, 2) + 5) + 1
        survey[arg1][5][msg.sender][1][0].field_0 = 0
        survey[arg1][5][msg.sender][1][0].field_256 = 0
        s = 0
        s = 0
        idx = 1
        s = 0
        while idx <= arg2.length:
            require idx - 1 < mem[480]
            _417 = mem[(32 * idx - 1) + 512]
            require idx - 1 < mem[(32 * arg2.length) + 512]
            _435 = mem[(32 * idx - 1) + (32 * arg2.length) + 544]
            if not mem[(32 * idx - 1) + 512]:
                _447 = mem[64]
                mem[64] = mem[64] + 64
                mem[_447] = 24
                mem[_447 + 32] = 'SURVEY_VOTE_WRONG_OPTION'
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 24
                mem[mem[64] + 68] = 'SURVEY_VOTE_WRONG_OPTION'
                idx = 32
                while idx < 24:
                    mem[idx + mem[64] + 68] = mem[idx + _447 + 32]
                    idx = idx + 32
                    continue 
                revert with 0, 'SURVEY_VOTE_WRONG_OPTION'
            _458 = mem[64]
            mem[64] = mem[64] + 64
            mem[_458] = 24
            mem[_458 + 32] = 'SURVEY_VOTE_WRONG_OPTION'
            if _417 > survey[arg1].field_256:
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 24
                mem[mem[64] + 68] = 'SURVEY_VOTE_WRONG_OPTION'
                idx = 32
                while idx < 24:
                    mem[idx + mem[64] + 68] = mem[idx + _458 + 32]
                    idx = idx + 32
                    continue 
                revert with 0, 'SURVEY_VOTE_WRONG_OPTION'
            _466 = mem[64]
            mem[64] = mem[64] + 64
            mem[_466] = 15
            mem[_466 + 32] = 'SURVEY_NO_STAKE'
            if _435 <= 0:
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 15
                mem[mem[64] + 68] = 'SURVEY_NO_STAKE'
                idx = 32
                while idx < 15:
                    mem[idx + mem[64] + 68] = mem[idx + _466 + 32]
                    idx = idx + 32
                    continue 
                revert with 0, 'SURVEY_NO_STAKE'
            mem[0] = idx - 1
            mem[32] = sha3(msg.sender, sha3(arg1, 2) + 5) + 1
            _481 = mem[64]
            mem[64] = mem[64] + 64
            mem[_481] = 26
            mem[_481 + 32] = 'SURVEY_OPTIONS_NOT_ORDERED'
            if _417 <= survey[arg1][5][msg.sender][1][idx - 1].field_0:
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 26
                mem[mem[64] + 68] = 'SURVEY_OPTIONS_NOT_ORDERED'
                idx = 32
                while idx < 26:
                    mem[idx + mem[64] + 68] = mem[idx + _481 + 32]
                    idx = idx + 32
                    continue 
                revert with 0, 'SURVEY_OPTIONS_NOT_ORDERED'
            _494 = mem[64]
            mem[64] = mem[64] + 64
            mem[_494] = _417
            mem[_494 + 32] = _435
            survey[arg1][5][msg.sender][1][idx].field_0 = _417
            survey[arg1][5][msg.sender][1][idx].field_256 = _435
            mem[0] = _417
            mem[32] = sha3(arg1, 2) + 4
            _516 = mem[64]
            mem[64] = mem[64] + 64
            mem[_516] = 17
            mem[_516 + 32] = 'MATH_ADD_OVERFLOW'
            if _435 + survey[arg1][4][_417].field_0 < survey[arg1][4][_417].field_0:
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 17
                mem[mem[64] + 68] = 'MATH_ADD_OVERFLOW'
                idx = 32
                while idx < 17:
                    mem[idx + mem[64] + 68] = mem[idx + _516 + 32]
                    idx = idx + 32
                    continue 
                revert with 0, 'MATH_ADD_OVERFLOW'
            mem[0] = _417
            mem[32] = sha3(arg1, 2) + 4
            survey[arg1][4][_417].field_0 += _435
            _572 = mem[64]
            mem[64] = mem[64] + 64
            mem[_572] = 17
            mem[_572 + 32] = 'MATH_ADD_OVERFLOW'
            if _435 + s < s:
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 17
                mem[mem[64] + 68] = 'MATH_ADD_OVERFLOW'
                idx = 32
                while idx < 17:
                    mem[idx + mem[64] + 68] = mem[idx + _572 + 32]
                    idx = idx + 32
                    continue 
                revert with 0, 'MATH_ADD_OVERFLOW'
            mem[0] = _417
            mem[32] = sha3(arg1, 2) + 4
            mem[mem[64]] = _417
            mem[mem[64] + 32] = _435
            mem[mem[64] + 64] = survey[arg1][4][_417].field_0
            emit CastVote(_417, _435, survey[arg1][4][_417].field_0, arg1, msg.sender);
            s = _435
            s = _417
            idx = idx + 1
            s = _435 + s
            continue 
    else:
        s = 0
        s = 0
        s = 0
        idx = 1
        while idx <= survey[arg1][5][msg.sender].field_0:
            mem[0] = survey[arg1][5][msg.sender][1][idx].field_0
            mem[32] = sha3(arg1, 2) + 4
            _419 = mem[64]
            mem[64] = mem[64] + 64
            mem[_419] = 18
            mem[_419 + 32] = 'MATH_SUB_UNDERFLOW'
            if survey[arg1][5][msg.sender][1][idx].field_256 > survey[arg1][4][survey[arg1][5][msg.sender][1][idx].field_0].field_0:
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 18
                mem[mem[64] + 68] = 'MATH_SUB_UNDERFLOW'
                idx = 32
                while idx < 18:
                    mem[idx + mem[64] + 68] = mem[idx + _419 + 32]
                    idx = idx + 32
                    continue 
                revert with 0, 'MATH_SUB_UNDERFLOW'
            mem[0] = survey[arg1][5][msg.sender][1][idx].field_0
            mem[32] = sha3(arg1, 2) + 4
            survey[arg1][4][survey[arg1][5][msg.sender][1][idx].field_0].field_0 -= survey[arg1][5][msg.sender][1][idx].field_256
            mem[mem[64]] = survey[arg1][5][msg.sender][1][idx].field_0
            mem[mem[64] + 32] = survey[arg1][5][msg.sender][1][idx].field_256
            mem[mem[64] + 64] = survey[arg1][4][survey[arg1][5][msg.sender][1][idx].field_0].field_0 - survey[arg1][5][msg.sender][1][idx].field_256
            emit ResetVote(survey[arg1][5][msg.sender][1][idx].field_0, survey[arg1][5][msg.sender][1][idx].field_256, survey[arg1][4][survey[arg1][5][msg.sender][1][idx].field_0].field_0 - survey[arg1][5][msg.sender][1][idx].field_256, arg1, msg.sender);
            s = survey[arg1][4][survey[arg1][5][msg.sender][1][idx].field_0].field_0 - survey[arg1][5][msg.sender][1][idx].field_256
            s = survey[arg1][4][survey[arg1][5][msg.sender][1][idx].field_0].field_0
            s = sha3(idx, sha3(msg.sender, sha3(arg1, 2) + 5) + 1)
            idx = idx + 1
            continue 
        mem[mem[64] + 4] = msg.sender
        mem[mem[64] + 36] = survey[arg1].field_64
        require ext_code.size(tokenAddress)
        call tokenAddress.balanceOfAt(address arg1, uint256 arg2) with:
             gas gas_remaining wei
            args msg.sender, survey[arg1].field_64
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        mem[0] = 0
        mem[32] = sha3(msg.sender, sha3(arg1, 2) + 5) + 1
        _459 = mem[64]
        mem[64] = mem[64] + 64
        mem[_459] = 18
        mem[_459 + 32] = 'MATH_SUB_UNDERFLOW'
        if survey[arg1][5][msg.sender][1][0].field_256 > ext_call.return_data[0]:
            revert with 0, 'MATH_SUB_UNDERFLOW'
        _505 = mem[64]
        mem[64] = mem[64] + 64
        mem[_505] = 18
        mem[_505 + 32] = 'MATH_SUB_UNDERFLOW'
        if ext_call.return_data[0] - survey[arg1][5][msg.sender][1][0].field_256 > survey[arg1].field_768:
            revert with 0, 'MATH_SUB_UNDERFLOW'
        survey[arg1].field_768 = survey[arg1].field_768 - ext_call.return_data[0] + survey[arg1][5][msg.sender][1][0].field_256
        mem[0] = msg.sender
        mem[32] = sha3(arg1, 2) + 5
        survey[arg1][5][msg.sender].field_0 = 0
        _564 = mem[64]
        mem[64] = mem[64] + 64
        mem[_564] = 0
        mem[_564 + 32] = 0
        mem[0] = 0
        mem[32] = sha3(msg.sender, sha3(arg1, 2) + 5) + 1
        survey[arg1][5][msg.sender][1][0].field_0 = 0
        survey[arg1][5][msg.sender][1][0].field_256 = 0
        _714 = mem[480]
        s = 0
        s = 0
        idx = 1
        s = 0
        while idx <= _714:
            require idx - 1 < mem[480]
            _745 = mem[(32 * idx - 1) + 512]
            require idx - 1 < mem[(32 * arg2.length) + 512]
            _762 = mem[(32 * idx - 1) + (32 * arg2.length) + 544]
            if not mem[(32 * idx - 1) + 512]:
                _767 = mem[64]
                mem[64] = mem[64] + 64
                mem[_767] = 24
                mem[_767 + 32] = 'SURVEY_VOTE_WRONG_OPTION'
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 24
                mem[mem[64] + 68] = 'SURVEY_VOTE_WRONG_OPTION'
                idx = 32
                while idx < 24:
                    mem[idx + mem[64] + 68] = mem[idx + _767 + 32]
                    idx = idx + 32
                    continue 
                revert with 0, 'SURVEY_VOTE_WRONG_OPTION'
            _772 = mem[64]
            mem[64] = mem[64] + 64
            mem[_772] = 24
            mem[_772 + 32] = 'SURVEY_VOTE_WRONG_OPTION'
            if _745 > survey[arg1].field_256:
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 24
                mem[mem[64] + 68] = 'SURVEY_VOTE_WRONG_OPTION'
                idx = 32
                while idx < 24:
                    mem[idx + mem[64] + 68] = mem[idx + _772 + 32]
                    idx = idx + 32
                    continue 
                revert with 0, 'SURVEY_VOTE_WRONG_OPTION'
            _777 = mem[64]
            mem[64] = mem[64] + 64
            mem[_777] = 15
            mem[_777 + 32] = 'SURVEY_NO_STAKE'
            if _762 <= 0:
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 15
                mem[mem[64] + 68] = 'SURVEY_NO_STAKE'
                idx = 32
                while idx < 15:
                    mem[idx + mem[64] + 68] = mem[idx + _777 + 32]
                    idx = idx + 32
                    continue 
                revert with 0, 'SURVEY_NO_STAKE'
            mem[0] = idx - 1
            mem[32] = sha3(msg.sender, sha3(arg1, 2) + 5) + 1
            _787 = mem[64]
            mem[64] = mem[64] + 64
            mem[_787] = 26
            mem[_787 + 32] = 'SURVEY_OPTIONS_NOT_ORDERED'
            if _745 <= survey[arg1][5][msg.sender][1][idx - 1].field_0:
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 26
                mem[mem[64] + 68] = 'SURVEY_OPTIONS_NOT_ORDERED'
                idx = 32
                while idx < 26:
                    mem[idx + mem[64] + 68] = mem[idx + _787 + 32]
                    idx = idx + 32
                    continue 
                revert with 0, 'SURVEY_OPTIONS_NOT_ORDERED'
            _797 = mem[64]
            mem[64] = mem[64] + 64
            mem[_797] = _745
            mem[_797 + 32] = _762
            survey[arg1][5][msg.sender][1][idx].field_0 = _745
            survey[arg1][5][msg.sender][1][idx].field_256 = _762
            mem[0] = _745
            mem[32] = sha3(arg1, 2) + 4
            _815 = mem[64]
            mem[64] = mem[64] + 64
            mem[_815] = 17
            mem[_815 + 32] = 'MATH_ADD_OVERFLOW'
            if _762 + survey[arg1][4][_745].field_0 < survey[arg1][4][_745].field_0:
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 17
                mem[mem[64] + 68] = 'MATH_ADD_OVERFLOW'
                idx = 32
                while idx < 17:
                    mem[idx + mem[64] + 68] = mem[idx + _815 + 32]
                    idx = idx + 32
                    continue 
                revert with 0, 'MATH_ADD_OVERFLOW'
            mem[0] = _745
            mem[32] = sha3(arg1, 2) + 4
            survey[arg1][4][_745].field_0 += _762
            _853 = mem[64]
            mem[64] = mem[64] + 64
            mem[_853] = 17
            mem[_853 + 32] = 'MATH_ADD_OVERFLOW'
            if _762 + s < s:
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 17
                mem[mem[64] + 68] = 'MATH_ADD_OVERFLOW'
                idx = 32
                while idx < 17:
                    mem[idx + mem[64] + 68] = mem[idx + _853 + 32]
                    idx = idx + 32
                    continue 
                revert with 0, 'MATH_ADD_OVERFLOW'
            mem[0] = _745
            mem[32] = sha3(arg1, 2) + 4
            mem[mem[64]] = _745
            mem[mem[64] + 32] = _762
            mem[mem[64] + 64] = survey[arg1][4][_745].field_0
            emit CastVote(_745, _762, survey[arg1][4][_745].field_0, arg1, msg.sender);
            s = _762
            s = _745
            idx = idx + 1
            s = _762 + s
            continue 
    mem[mem[64] + 36] = survey[arg1].field_64
    require ext_code.size(tokenAddress)
    call tokenAddress.balanceOfAt(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args msg.sender, survey[arg1].field_64
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    mem[mem[64]] = 18
    mem[mem[64] + 32] = 'MATH_SUB_UNDERFLOW'
    if s > ext_call.return_data[0]:
        revert with 0, 'MATH_SUB_UNDERFLOW'
    survey[arg1][5][msg.sender][1][0].field_256 = ext_call.return_data[0] - s
    survey[arg1][5][msg.sender].field_0 = mem[480]
    if s + survey[arg1].field_768 < survey[arg1].field_768:
        revert with 0, 'MATH_ADD_OVERFLOW'
    survey[arg1].field_768 += s
    require survey[arg1].field_512 >= s + survey[arg1].field_768
}



}
