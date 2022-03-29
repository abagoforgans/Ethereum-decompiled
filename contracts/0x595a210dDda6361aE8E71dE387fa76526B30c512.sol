contract main {


// =======================  Init code  ======================


address stor0;
uint256 stor5;
uint256 stor6;
uint256 stor7;
array of uint256 stor10;

function _fallback() {
    mem[96 len -3213] = code.data[3524 len -3213]
    mem[64] = -3117
    stor5 = mem[96]
    stor7 = mem[128]
    stor6 = mem[160]
    stor10.length = (2 * mem[mem[192] + 96]) + 1
    s = 0xc65a7bb8d6351c1cf70c95a316cc6a92839c986682d98bc35f958f4883f9d2a8
    idx = mem[192] + 128
    while mem[192] + mem[mem[192] + 96] + 128 > idx:
        stor[s] = mem[idx]
        s = s + 1
        idx = idx + 32
        continue 
    idx = (Mask(251, 0, mem[mem[192] + 96] + 31) >> 5) - 0x39a5844729cae3e308f36a5ce933956d7c6367997d26743ca06a70b77c062d58
    while (stor10.length + 31 / 32) - 0x39a5844729cae3e308f36a5ce933956d7c6367997d26743ca06a70b77c062d58 > idx:
        stor[idx] = 0
        idx = idx + 1
        continue 
    stor0 = mem[236 len 20]
    return code.data[311 len 3213]
}



// =====================  Runtime code  =====================


address stor0;
mapping of struct bracket;
uint256 winnings;
uint256 numWinners;
uint64 stor4;
uint256 stor4;
uint256 entryFee;
uint256 scoringDuration;
uint256 tournamentStartTime;
uint256 contestOverTime;
uint8 winningScore; offset 64
uint64 results;
uint256 stor9; offset 64
uint256 stor9;
array of uint256 tournamentDataIPFSHash;

function entryFee() {
    return entryFee
}

function winningScore() {
    return winningScore
}

function tournamentDataIPFSHash() {
    return tournamentDataIPFSHash[0 len tournamentDataIPFSHash.length]
}

function tournamentStartTime() {
    return tournamentStartTime
}

function getBracket(address arg1) {
    return Mask(64, 192, bracket[address(arg1)].field_256)
}

function numWinners() {
    return numWinners
}

function contestOverTime() {
    return contestOverTime
}

function results() {
    return Mask(64, 192, results)
}

function winnings() {
    return winnings
}

function scoringDuration() {
    return scoringDuration
}

function getScore(address arg1) {
    return bracket[address(arg1)].field_320
}

function hasCollectedWinnings(address arg1) {
    return bool(bracket[address(arg1)].field_328)
}

function getCommitment(address arg1) {
    return bracket[address(arg1)].field_0
}

function _fallback() payable {
    revert 
}

function revealBracket(bytes8 arg1, bytes16 arg2) {
    if sha3(msg.sender, arg1, arg2) != bracket[address(msg.sender)].field_0:
        return 0
    bracket[address(msg.sender)].field_256 = arg1
    return 1
}

function submitBracket(bytes32 arg1) payable {
    require msg.value == entryFee
    require block.timestamp < tournamentStartTime
    require not bracket[address(msg.sender)].field_0
    bracket[address(msg.sender)].field_0 = arg1
    emit SubmissionAccepted(msg.sender);
}

function getBracketScore(bytes8 arg1) {
    require Mask(64, 192, results)
    require ext_code.size(0x397418fb405997a88d7870963bac764237610a49)
    delegate 0x397418fb405997a88d7870963bac764237610a49.0x24248168 with:
         gas gas_remaining - 50 wei
        args Mask(64, 192, arg1), Mask(64, 192, results), uint64(stor4)
    require delegate.return_code
    return delegate.return_data[31 len 1]
}

function collectWinnings() {
    if block.timestamp < contestOverTime:
        return 0
    if winningScore != bracket[address(msg.sender)].field_320:
        return 0
    if bracket[address(msg.sender)].field_328:
        return 0
    bracket[address(msg.sender)].field_328 = 1
    call msg.sender with:
       value winnings wei
         gas 2300 * is_zero(value) wei
    require ext_call.success
    return 1
}

function startScoring() {
    if Mask(64, 192, results):
        return 0
    if block.timestamp < tournamentStartTime:
        return 0
    require ext_code.size(stor0)
    call stor0.0x5c206f41 with:
         gas gas_remaining - 50 wei
    require ext_call.success
    if not Mask(64, 192, ext_call.return_data[0]):
        return 0
    uint256(stor9.field_0) = ext_call.return_data[0 len 8] or Mask(192, 64, uint256(stor9.field_0))
    require ext_code.size(0x397418fb405997a88d7870963bac764237610a49)
    delegate 0x397418fb405997a88d7870963bac764237610a49.getScoringMask(bytes8 rg1) with:
         gas gas_remaining - 50 wei
        args Mask(64, 192, ext_call.return_data[0])
    require delegate.return_code
    uint256(stor4) = delegate.return_data[24 len 8] or Mask(192, 64, uint256(stor4))
    contestOverTime = block.timestamp + scoringDuration
    emit TournamentOver()
    return 1
}

function scoreBracket(address arg1) {
    if not Mask(64, 192, results):
        return 0
    if block.timestamp >= contestOverTime:
        return 0
    if not Mask(64, 192, bracket[address(arg1)].field_256):
        return 0
    if bracket[address(arg1)].field_320:
        return 0
    require ext_code.size(0x397418fb405997a88d7870963bac764237610a49)
    delegate 0x397418fb405997a88d7870963bac764237610a49.0x24248168 with:
         gas gas_remaining - 50 wei
        args Mask(64, 192, bracket[address(arg1)].field_256), Mask(64, 192, results), uint64(stor4)
    require delegate.return_code
    bracket[address(arg1)].field_320 = uint8(delegate.return_data[0])
    if delegate.return_data[31 len 1] > winningScore:
        Mask(192, 0, stor9.field_64) = bracket[address(arg1)].field_320
        numWinners = 0
    if bracket[address(arg1)].field_320 == winningScore:
        numWinners++
        require numWinners + 1
        winnings = eth.balance(this.address) / numWinners + 1
        emit NewWinner(address(arg1), bracket[address(arg1)].field_320);
    return 1
}



}
