contract main {




// =====================  Runtime code  =====================


array of uint256 jobsByManager;
array of uint256 jobsByWorker;
address DAIAddress;
uint256 jobCount;
address arbitratorAddress;
array of address stor18569430475105882587588266137607568536673111973893317399460219858819262702948;
array of uint256 stor18569430475105882587588266137607568536673111973893317399460219858819262702949;
array of struct stor18569430475105882587588266137607568536673111973893317399460219858819262702950;
array of uint256 stor18569430475105882587588266137607568536673111973893317399460219858819262702951;
array of uint256 stor18569430475105882587588266137607568536673111973893317399460219858819262702952;
array of uint256 stor18569430475105882587588266137607568536673111973893317399460219858819262702953;
array of uint256 stor18569430475105882587588266137607568536673111973893317399460219858819262702954;
array of struct stor18569430475105882587588266137607568536673111973893317399460219858819262702955;
array of uint256 stor18569430475105882587588266137607568536673111973893317399460219858819262702956;
array of uint256 stor18569430475105882587588266137607568536673111973893317399460219858819262702958;
array of uint256 stor18569430475105882587588266137607568536673111973893317399460219858819262702959;

function get_Sponsored_Amount_in_Job_By_Address(uint256 arg1, address arg2) {
    require arg1 >= 0
    require arg2
    require arg1 < _Sponsored_Amount_in_Job_By_.length
    return uint256(stor[(13 * arg1) + ('name', '_Sponsored_Amount_in_Job_By_', 0) + 10][address(arg2)].field_0)
}

function JobsByManager(address arg1, uint256 arg2) {
    require arg2 < jobsByManager[arg1]
    return jobsByManager[arg1][arg2]
}

function jobCount() {
    return jobCount
}

function arbitrator() {
    return arbitratorAddress
}

function DAI() {
    return DAIAddress
}

function JobsByWorker(address arg1, uint256 arg2) {
    require arg2 < jobsByWorker[arg1]
    return jobsByWorker[arg1][arg2]
}

function _fallback() payable {
    revert
}

function provideProofOfWork(uint256 arg1) {
    require arg1 >= 0
    require arg1 < _Sponsored_Amount_in_Job_By_.length
    require msg.sender == _Sponsored_Amount_in_Job_By_[arg1].field_768
    uint8(_Sponsored_Amount_in_Job_By_[arg1].field_2208) = 0
    emit ProofOfWorkProvided(arg1, msg.sender, 1);
}

function setEvaluator(uint256 arg1) {
    require arg1 >= 0
    require arg1 < _Sponsored_Amount_in_Job_By_.length
    require _Sponsored_Amount_in_Job_By_[arg1].field_256 != msg.sender
    require _Sponsored_Amount_in_Job_By_[arg1].field_768 != msg.sender
    uint256(_Sponsored_Amount_in_Job_By_[arg1].field_2048) = msg.sender or Mask(96, 160, uint256(_Sponsored_Amount_in_Job_By_[arg1].field_2048))
    emit EvaluatorSet(arg1, msg.sender);
}

function confirmProofOfWork(uint256 arg1) {
    require arg1 >= 0
    require arg1 < _Sponsored_Amount_in_Job_By_.length
    require msg.sender == _Sponsored_Amount_in_Job_By_[arg1].field_2048
    uint8(_Sponsored_Amount_in_Job_By_[arg1].field_2208) = 1
    emit ProofOfWorkConfirmed(uint256 arg1, address arg2, bool arg3):
                              arg1,
                              0,
                              _Sponsored_Amount_in_Job_By_[arg1].field_2048,
                              1,
}

function tip(address arg1, uint256 arg2) {
    require arg1
    require arg2 > 0
    require ext_code.size(DAIAddress)
    call DAIAddress.0xdd62ed3e with:
         gas gas_remaining wei
        args msg.sender, this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] >= arg2
    emit TipMade(msg.sender, address(arg1), arg2);
    require ext_code.size(DAIAddress)
    call DAIAddress.0x23b872dd with:
         gas gas_remaining wei
        args msg.sender, address(arg1), arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
}

function claimJob(uint256 arg1) {
    require arg1 >= 0
    require arg1 < _Sponsored_Amount_in_Job_By_.length
    require _Sponsored_Amount_in_Job_By_[arg1].field_256 != msg.sender
    require _Sponsored_Amount_in_Job_By_[arg1].field_2048 != msg.sender
    require uint8(_Sponsored_Amount_in_Job_By_[arg1].field_928) <= 3
    require not uint8(_Sponsored_Amount_in_Job_By_[arg1].field_928)
    _Sponsored_Amount_in_Job_By_[arg1].field_768 = msg.sender
    uint8(_Sponsored_Amount_in_Job_By_[arg1].field_928) = 1
    Mask(88, 0, _Sponsored_Amount_in_Job_By_[arg1].field_936) = Mask(88, 168, msg.sender) >> 168
    jobsByWorker[msg.sender]++
    jobsByWorker[msg.sender][jobsByWorker[msg.sender]] = arg1
    emit JobClaimed(msg.sender, arg1);
}

function withdrawDAI(address arg1, uint256 arg2) {
    require msg.sender == arbitratorAddress
    require arg1
    require arg2 > 0
    require ext_code.size(DAIAddress)
    call DAIAddress.0x70a08231 with:
         gas gas_remaining wei
        args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] >= arg2
    require ext_code.size(DAIAddress)
    call DAIAddress.0xa9059cbb with:
         gas gas_remaining wei
        args address(arg1), arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    emit DAIWithdrawn(address(arg1), arg2);
}

function cancelJob(uint256 arg1) {
    require arg1 >= 0
    require arg1 < _Sponsored_Amount_in_Job_By_.length
    if arbitratorAddress != msg.sender:
        require msg.sender == _Sponsored_Amount_in_Job_By_[arg1].field_256
        require not _Sponsored_Amount_in_Job_By_[arg1].field_768
        require uint8(_Sponsored_Amount_in_Job_By_[arg1].field_928) <= 3
        require not uint8(_Sponsored_Amount_in_Job_By_[arg1].field_928)
    uint8(_Sponsored_Amount_in_Job_By_[arg1].field_928) = 3
    emit JobCancelled(arg1);
    require ext_code.size(DAIAddress)
    call DAIAddress.0xa9059cbb with:
         gas gas_remaining wei
        args _Sponsored_Amount_in_Job_By_[arg1].field_256, uint256(_Sponsored_Amount_in_Job_By_[arg1].field_512)
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
}

function claimPayment(uint256 arg1) {
    require arg1 >= 0
    require arg1 < _Sponsored_Amount_in_Job_By_.length
    require msg.sender == _Sponsored_Amount_in_Job_By_[arg1].field_768
    require 0 < uint256(_Sponsored_Amount_in_Job_By_[arg1].field_1280)
    require uint256(_Sponsored_Amount_in_Job_By_[arg1].field_1536) > 0
    uint256(_Sponsored_Amount_in_Job_By_[arg1].field_1536) = 0
    uint256(_Sponsored_Amount_in_Job_By_[arg1].field_1792) += uint256(_Sponsored_Amount_in_Job_By_[arg1].field_1536)
    emit PaymentClaimed(msg.sender, uint256(_Sponsored_Amount_in_Job_By_[arg1].field_1536), arg1);
    require ext_code.size(DAIAddress)
    call DAIAddress.0xa9059cbb with:
         gas gas_remaining wei
        args msg.sender, uint256(_Sponsored_Amount_in_Job_By_[arg1].field_1536)
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
}

function payToEvaluator(uint256 arg1, uint256 arg2) {
    require arg1 >= 0
    require arg2 > 0
    require arg1 < _Sponsored_Amount_in_Job_By_.length
    require msg.sender == _Sponsored_Amount_in_Job_By_[arg1].field_256
    require ext_code.size(DAIAddress)
    call DAIAddress.0xdd62ed3e with:
         gas gas_remaining wei
        args _Sponsored_Amount_in_Job_By_[arg1].field_256, this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] >= arg2
    emit EvaluatorPaid(msg.sender, _Sponsored_Amount_in_Job_By_[arg1].field_2048, arg1, arg2);
    require ext_code.size(DAIAddress)
    call DAIAddress.0x23b872dd with:
         gas gas_remaining wei
        args _Sponsored_Amount_in_Job_By_[arg1].field_256, _Sponsored_Amount_in_Job_By_[arg1].field_2048, arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
}

function approvePayment(uint256 arg1) {
    require arg1 >= 0
    require arg1 < _Sponsored_Amount_in_Job_By_.length
    if arbitratorAddress != msg.sender:
        require msg.sender == _Sponsored_Amount_in_Job_By_[arg1].field_256
        require 1 == bool(uint8(_Sponsored_Amount_in_Job_By_[arg1].field_2208))
    require uint256(_Sponsored_Amount_in_Job_By_[arg1].field_1024) > uint256(_Sponsored_Amount_in_Job_By_[arg1].field_1280)
    require uint256(_Sponsored_Amount_in_Job_By_[arg1].field_1024)
    uint256(_Sponsored_Amount_in_Job_By_[arg1].field_1536) += uint256(_Sponsored_Amount_in_Job_By_[arg1].field_512) / uint256(_Sponsored_Amount_in_Job_By_[arg1].field_1024)
    uint256(_Sponsored_Amount_in_Job_By_[arg1].field_1280)++
    if uint256(_Sponsored_Amount_in_Job_By_[arg1].field_1280) + 1 == uint256(_Sponsored_Amount_in_Job_By_[arg1].field_1024):
        uint8(_Sponsored_Amount_in_Job_By_[arg1].field_928) = 2
    emit PaymentApproved(msg.sender, arg1, uint256(_Sponsored_Amount_in_Job_By_[arg1].field_512) / uint256(_Sponsored_Amount_in_Job_By_[arg1].field_1024));
}

function Jobs(uint256 arg1) {
    require arg1 < _Sponsored_Amount_in_Job_By_.length
    mem[128] = uint256(_Sponsored_Amount_in_Job_By_[arg1].field_0)
    idx = 128
    s = 0
    while _Sponsored_Amount_in_Job_By_[arg1].length + 96 > idx:
        mem[idx + 32] = uint256(_Sponsored_Amount_in_Job_By_[(13 * arg1) + s].field_256)
        idx = idx + 32
        s = s + 1
        continue 
    if uint8(_Sponsored_Amount_in_Job_By_[arg1].field_928) <= 3:
        return Array(len=_Sponsored_Amount_in_Job_By_[arg1].length, data=mem[128 len _Sponsored_Amount_in_Job_By_[arg1].length]), 
               _Sponsored_Amount_in_Job_By_[arg1].field_256,
               uint256(_Sponsored_Amount_in_Job_By_[arg1].field_512),
               _Sponsored_Amount_in_Job_By_[arg1].field_768,
               uint8(_Sponsored_Amount_in_Job_By_[arg1].field_768),
               uint256(_Sponsored_Amount_in_Job_By_[arg1].field_1024),
               uint256(_Sponsored_Amount_in_Job_By_[arg1].field_1280),
               uint256(_Sponsored_Amount_in_Job_By_[arg1].field_1536),
               uint256(_Sponsored_Amount_in_Job_By_[arg1].field_1792),
               _Sponsored_Amount_in_Job_By_[arg1].field_2048,
               bool(uint8(_Sponsored_Amount_in_Job_By_[arg1].field_2208)),
               uint256(_Sponsored_Amount_in_Job_By_[arg1].field_2304),
               uint256(_Sponsored_Amount_in_Job_By_[arg1].field_3072)
    revert
}

function sponsorDAI(uint256 arg1, uint256 arg2) {
    require arg1 >= 0
    require arg2 > 0
    require arg1 < _Sponsored_Amount_in_Job_By_.length
    require uint8(_Sponsored_Amount_in_Job_By_[arg1].field_928) <= 3
    require uint8(_Sponsored_Amount_in_Job_By_[arg1].field_928) == 1
    if not uint256(stor[(13 * arg1) + ('name', '_Sponsored_Amount_in_Job_By_', 0) + 10][msg.sender].field_0):
        uint256(_Sponsored_Amount_in_Job_By_[arg1].field_2816)++
        uint256(stor[sha3((13 * arg1) + ('name', '_Sponsored_Amount_in_Job_By_', 0) + 11) + uint256(_Sponsored_Amount_in_Job_By_[arg1].field_2816)].field_0) = msg.sender or Mask(96, 160, uint256(stor[sha3((13 * arg1) + ('name', '_Sponsored_Amount_in_Job_By_', 0) + 11) + uint256(_Sponsored_Amount_in_Job_By_[arg1].field_2816)].field_0))
    uint256(stor[(13 * arg1) + ('name', '_Sponsored_Amount_in_Job_By_', 0) + 10][msg.sender].field_0) += arg2
    uint256(_Sponsored_Amount_in_Job_By_[arg1].field_2304) += arg2
    uint256(_Sponsored_Amount_in_Job_By_[arg1].field_1536) += arg2
    uint256(_Sponsored_Amount_in_Job_By_[arg1].field_3072)++
    emit DAISponsored(arg1, arg2, msg.sender);
    require ext_code.size(DAIAddress)
    call DAIAddress.0xdd62ed3e with:
         gas gas_remaining wei
        args msg.sender, this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] >= arg2
    require ext_code.size(DAIAddress)
    call DAIAddress.0x23b872dd with:
         gas gas_remaining wei
        args msg.sender, this.address, arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
}

function get_Sponsors_list_by_Job(uint256 arg1) {
    require arg1 >= 0
    require arg1 < _Sponsored_Amount_in_Job_By_.length
    if not uint256(_Sponsored_Amount_in_Job_By_[arg1].field_2816):
        mem[(32 * uint256(_Sponsored_Amount_in_Job_By_[arg1].field_3072)) + (32 * uint256(_Sponsored_Amount_in_Job_By_[arg1].field_2816)) + 160] = 32
        mem[(32 * uint256(_Sponsored_Amount_in_Job_By_[arg1].field_3072)) + (32 * uint256(_Sponsored_Amount_in_Job_By_[arg1].field_2816)) + 192] = uint256(_Sponsored_Amount_in_Job_By_[arg1].field_2816)
        mem[(32 * uint256(_Sponsored_Amount_in_Job_By_[arg1].field_3072)) + (32 * uint256(_Sponsored_Amount_in_Job_By_[arg1].field_2816)) + 224 len floor32(uint256(_Sponsored_Amount_in_Job_By_[arg1].field_2816))] = mem[(32 * uint256(_Sponsored_Amount_in_Job_By_[arg1].field_3072)) + 160 len floor32(uint256(_Sponsored_Amount_in_Job_By_[arg1].field_2816))]
        return memory
          from (32 * uint256(_Sponsored_Amount_in_Job_By_[arg1].field_3072)) + (32 * uint256(_Sponsored_Amount_in_Job_By_[arg1].field_2816)) + 160
           len (96 * uint256(_Sponsored_Amount_in_Job_By_[arg1].field_2816)) + 64
    mem[(32 * uint256(_Sponsored_Amount_in_Job_By_[arg1].field_3072)) + 160] = stor[sha3((13 * arg1) + ('name', '_Sponsored_Amount_in_Job_By_', 0) + 11)].field_0
    idx = (32 * uint256(_Sponsored_Amount_in_Job_By_[arg1].field_3072)) + 160
    s = 0
    while (32 * uint256(_Sponsored_Amount_in_Job_By_[arg1].field_3072)) + (32 * uint256(_Sponsored_Amount_in_Job_By_[arg1].field_2816)) + 128 > idx:
        mem[idx + 32] = stor[s + sha3((13 * arg1) + ('name', '_Sponsored_Amount_in_Job_By_', 0) + 11)].field_256
        idx = idx + 32
        s = s + 1
        continue 
    mem[(32 * uint256(_Sponsored_Amount_in_Job_By_[arg1].field_3072)) + (32 * uint256(_Sponsored_Amount_in_Job_By_[arg1].field_2816)) + 224 len floor32(uint256(_Sponsored_Amount_in_Job_By_[arg1].field_2816))] = mem[(32 * uint256(_Sponsored_Amount_in_Job_By_[arg1].field_3072)) + 160 len floor32(uint256(_Sponsored_Amount_in_Job_By_[arg1].field_2816))]
    return Array(len=uint256(_Sponsored_Amount_in_Job_By_[arg1].field_2816), data=mem[(32 * uint256(_Sponsored_Amount_in_Job_By_[arg1].field_3072)) + 160 len floor32(uint256(_Sponsored_Amount_in_Job_By_[arg1].field_2816))], mem[(32 * uint256(_Sponsored_Amount_in_Job_By_[arg1].field_3072)) + (32 * uint256(_Sponsored_Amount_in_Job_By_[arg1].field_2816)) + floor32(uint256(_Sponsored_Amount_in_Job_By_[arg1].field_2816)) + 224 len (32 * uint256(_Sponsored_Amount_in_Job_By_[arg1].field_2816)) - floor32(uint256(_Sponsored_Amount_in_Job_By_[arg1].field_2816))]), 
}

function getJob(uint256 arg1) {
    require arg1 >= 0
    require arg1 < _Sponsored_Amount_in_Job_By_.length
    mem[128] = uint256(_Sponsored_Amount_in_Job_By_[arg1].field_0)
    idx = 128
    s = 0
    while _Sponsored_Amount_in_Job_By_[arg1].length + 96 > idx:
        mem[idx + 32] = uint256(_Sponsored_Amount_in_Job_By_[(13 * arg1) + s].field_256)
        idx = idx + 32
        s = s + 1
        continue 
    require uint8(_Sponsored_Amount_in_Job_By_[arg1].field_928) <= 3
    mem[ceil32(_Sponsored_Amount_in_Job_By_[arg1].length) + 160] = _Sponsored_Amount_in_Job_By_[arg1].field_256
    mem[ceil32(_Sponsored_Amount_in_Job_By_[arg1].length) + 192] = uint256(_Sponsored_Amount_in_Job_By_[arg1].field_512)
    mem[ceil32(_Sponsored_Amount_in_Job_By_[arg1].length) + 224] = _Sponsored_Amount_in_Job_By_[arg1].field_768
    mem[ceil32(_Sponsored_Amount_in_Job_By_[arg1].length) + 256] = uint8(_Sponsored_Amount_in_Job_By_[arg1].field_928)
    mem[ceil32(_Sponsored_Amount_in_Job_By_[arg1].length) + 288] = uint256(_Sponsored_Amount_in_Job_By_[arg1].field_1024)
    mem[ceil32(_Sponsored_Amount_in_Job_By_[arg1].length) + 320] = uint256(_Sponsored_Amount_in_Job_By_[arg1].field_1280)
    mem[ceil32(_Sponsored_Amount_in_Job_By_[arg1].length) + 352] = uint256(_Sponsored_Amount_in_Job_By_[arg1].field_1536)
    mem[ceil32(_Sponsored_Amount_in_Job_By_[arg1].length) + 384] = uint256(_Sponsored_Amount_in_Job_By_[arg1].field_1792)
    mem[ceil32(_Sponsored_Amount_in_Job_By_[arg1].length) + 416] = _Sponsored_Amount_in_Job_By_[arg1].field_2048
    mem[ceil32(_Sponsored_Amount_in_Job_By_[arg1].length) + 448] = bool(uint8(_Sponsored_Amount_in_Job_By_[arg1].field_2208))
    mem[ceil32(_Sponsored_Amount_in_Job_By_[arg1].length) + 480] = uint256(_Sponsored_Amount_in_Job_By_[arg1].field_2304)
    mem[ceil32(_Sponsored_Amount_in_Job_By_[arg1].length) + 512] = uint256(_Sponsored_Amount_in_Job_By_[arg1].field_3072)
    mem[ceil32(_Sponsored_Amount_in_Job_By_[arg1].length) + 128] = 416
    mem[ceil32(_Sponsored_Amount_in_Job_By_[arg1].length) + 544] = _Sponsored_Amount_in_Job_By_[arg1].length
    if 0 < _Sponsored_Amount_in_Job_By_[arg1].length:
        mem[ceil32(_Sponsored_Amount_in_Job_By_[arg1].length) + 576] = mem[128]
        mem[ceil32(_Sponsored_Amount_in_Job_By_[arg1].length) + 608 len floor32(_Sponsored_Amount_in_Job_By_[arg1].length - 1)] = mem[160 len floor32(_Sponsored_Amount_in_Job_By_[arg1].length - 1)]
    return Array(len=_Sponsored_Amount_in_Job_By_[arg1].length, data=mem[ceil32(_Sponsored_Amount_in_Job_By_[arg1].length) + 576 len _Sponsored_Amount_in_Job_By_[arg1].length]), 
           _Sponsored_Amount_in_Job_By_[arg1].field_256,
           uint256(_Sponsored_Amount_in_Job_By_[arg1].field_512),
           _Sponsored_Amount_in_Job_By_[arg1].field_768,
           uint8(_Sponsored_Amount_in_Job_By_[arg1].field_768),
           uint256(_Sponsored_Amount_in_Job_By_[arg1].field_1024),
           uint256(_Sponsored_Amount_in_Job_By_[arg1].field_1280),
           uint256(_Sponsored_Amount_in_Job_By_[arg1].field_1536),
           uint256(_Sponsored_Amount_in_Job_By_[arg1].field_1792),
           _Sponsored_Amount_in_Job_By_[arg1].field_2048,
           bool(uint8(_Sponsored_Amount_in_Job_By_[arg1].field_2208)),
           uint256(_Sponsored_Amount_in_Job_By_[arg1].field_2304),
           uint256(_Sponsored_Amount_in_Job_By_[arg1].field_3072)
}

function createJob(string arg1, uint256 arg2, uint256 arg3, address arg4) {
    mem[128 len arg1.length] = arg1[all]
    mem[ceil32(arg1.length) + 128] = 96
    mem[ceil32(arg1.length) + 160] = 0
    mem[ceil32(arg1.length) + 192] = 0
    mem[ceil32(arg1.length) + 224] = 0
    mem[ceil32(arg1.length) + 256] = 0
    mem[ceil32(arg1.length) + 288] = 0
    mem[ceil32(arg1.length) + 320] = 0
    mem[ceil32(arg1.length) + 352] = 0
    mem[ceil32(arg1.length) + 384] = 0
    mem[ceil32(arg1.length) + 416] = 0
    mem[ceil32(arg1.length) + 448] = 0
    mem[ceil32(arg1.length) + 480] = 0
    mem[ceil32(arg1.length) + 512] = 96
    mem[ceil32(arg1.length) + 544] = 0
    require arg2 > 0
    require arg3 > 0
    if not arg2:
        require 0 <= arg2
        mem[ceil32(arg1.length) + 576] = 96
        mem[ceil32(arg1.length) + 608] = msg.sender
        mem[ceil32(arg1.length) + 640] = arg2
        mem[ceil32(arg1.length) + 672] = 0
        mem[ceil32(arg1.length) + 704] = 0
        mem[ceil32(arg1.length) + 736] = arg3
        mem[ceil32(arg1.length) + 768] = 0
        mem[ceil32(arg1.length) + 800] = 0
        mem[ceil32(arg1.length) + 832] = 0
        mem[ceil32(arg1.length) + 864] = arg4
        mem[ceil32(arg1.length) + 896] = 0
        mem[ceil32(arg1.length) + 928] = 0
        mem[ceil32(arg1.length) + 960] = 96
        mem[ceil32(arg1.length) + 992] = 0
        _Sponsored_Amount_in_Job_By_.length++
        uint256(_Sponsored_Amount_in_Job_By_[_Sponsored_Amount_in_Job_By_.length][].field_0) = Array(len=arg1.length, data=arg1[all])
        stor290D[stor0.length] = msg.sender
        stor290D[stor0.length] = arg2
        stor290D[stor0.length].field_0 = 0
        stor290D[stor0.length].field_256 % 1 = 0
        Mask(168, 0, stor290D[stor0.length].field_0) = 0
        stor290D[stor0.length].field_256 % 1 = 0
        stor290D[stor0.length].field_256 % 1 = 0
        stor290D[stor0.length] = arg3
        stor290D[stor0.length] = 0
        stor290D[stor0.length] = 0
        stor290D[stor0.length] = 0
        stor290D[stor0.length].field_0 = arg4
        Mask(96, 0, stor290D[stor0.length].field_160) = 0
        stor290D[stor0.length] = 0
        stor290D[stor0.length] = arg1.length
        if not arg1.length:
            idx = 0
            while stor290D[stor0.length] > idx:
                stor[idx + sha3((13 * stor0.length) + 0x290decd9548b62a8d60345a988386fc84ba6bc95484008f6362f93160ef3e56e)] = 0
                idx = idx + 1
                continue 
        else:
            s = 0
            idx = 128
            while (32 * arg1.length) + 128 > idx:
                stor[s + sha3((13 * stor0.length) + 0x290decd9548b62a8d60345a988386fc84ba6bc95484008f6362f93160ef3e56e)] = mem[idx + 12 len 20]
                s = s + 1
                idx = idx + 32
                continue 
            idx = Mask(251, 0, (32 * arg1.length) + 31) >> 5
            while stor290D[stor0.length] > idx:
                stor[idx + sha3((13 * stor0.length) + 0x290decd9548b62a8d60345a988386fc84ba6bc95484008f6362f93160ef3e56e)] = 0
                idx = idx + 1
                continue 
        stor290D[stor0.length] = 0
        jobsByManager[msg.sender]++
        jobsByManager[msg.sender][jobsByManager[msg.sender]] = jobCount
        require ext_code.size(DAIAddress)
        call DAIAddress.0xdd62ed3e with:
             gas gas_remaining wei
            args msg.sender, this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] >= arg2
        emit JobCreated(msg.sender, arg2, arg3, jobCount, Array(len=arg1.length, data=arg1[all]), address(arg4));
    else:
        require arg2 / arg2 == 1
        require arg2 / 10 <= arg2
        mem[ceil32(arg1.length) + 576] = 96
        mem[ceil32(arg1.length) + 608] = msg.sender
        mem[ceil32(arg1.length) + 640] = arg2 - (arg2 / 10)
        mem[ceil32(arg1.length) + 672] = 0
        mem[ceil32(arg1.length) + 704] = 0
        mem[ceil32(arg1.length) + 736] = arg3
        mem[ceil32(arg1.length) + 768] = 0
        mem[ceil32(arg1.length) + 800] = 0
        mem[ceil32(arg1.length) + 832] = 0
        mem[ceil32(arg1.length) + 864] = arg4
        mem[ceil32(arg1.length) + 896] = 0
        mem[ceil32(arg1.length) + 928] = 0
        mem[ceil32(arg1.length) + 960] = 96
        mem[ceil32(arg1.length) + 992] = 0
        _Sponsored_Amount_in_Job_By_.length++
        uint256(_Sponsored_Amount_in_Job_By_[_Sponsored_Amount_in_Job_By_.length][].field_0) = Array(len=arg1.length, data=arg1[all])
        stor290D[stor0.length] = msg.sender
        stor290D[stor0.length] = arg2 - (arg2 / 10)
        stor290D[stor0.length].field_0 = 0
        stor290D[stor0.length].field_256 % 1 = 0
        Mask(168, 0, stor290D[stor0.length].field_0) = 0
        stor290D[stor0.length].field_256 % 1 = 0
        stor290D[stor0.length].field_256 % 1 = 0
        stor290D[stor0.length] = arg3
        stor290D[stor0.length] = 0
        stor290D[stor0.length] = 0
        stor290D[stor0.length] = 0
        stor290D[stor0.length].field_0 = arg4
        Mask(96, 0, stor290D[stor0.length].field_160) = 0
        stor290D[stor0.length] = 0
        stor290D[stor0.length] = arg1.length
        if not arg1.length:
            idx = 0
            while stor290D[stor0.length] > idx:
                stor[idx + sha3((13 * stor0.length) + 0x290decd9548b62a8d60345a988386fc84ba6bc95484008f6362f93160ef3e56e)] = 0
                idx = idx + 1
                continue 
        else:
            s = 0
            idx = 128
            while (32 * arg1.length) + 128 > idx:
                stor[s + sha3((13 * stor0.length) + 0x290decd9548b62a8d60345a988386fc84ba6bc95484008f6362f93160ef3e56e)] = mem[idx + 12 len 20]
                s = s + 1
                idx = idx + 32
                continue 
            idx = Mask(251, 0, (32 * arg1.length) + 31) >> 5
            while stor290D[stor0.length] > idx:
                stor[idx + sha3((13 * stor0.length) + 0x290decd9548b62a8d60345a988386fc84ba6bc95484008f6362f93160ef3e56e)] = 0
                idx = idx + 1
                continue 
        stor290D[stor0.length] = 0
        jobsByManager[msg.sender]++
        jobsByManager[msg.sender][jobsByManager[msg.sender]] = jobCount
        require ext_code.size(DAIAddress)
        call DAIAddress.0xdd62ed3e with:
             gas gas_remaining wei
            args msg.sender, this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] >= arg2
        emit JobCreated(msg.sender, arg2 - (arg2 / 10), arg3, jobCount, Array(len=arg1.length, data=arg1[all]), address(arg4));
    jobCount++
    require ext_code.size(DAIAddress)
    call DAIAddress.0x23b872dd with:
         gas gas_remaining wei
        args msg.sender, this.address, arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
}



}
