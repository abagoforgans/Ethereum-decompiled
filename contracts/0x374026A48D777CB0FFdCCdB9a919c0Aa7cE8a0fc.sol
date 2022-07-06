contract main {




// =====================  Runtime code  =====================


#
#  - stake(bytes32 arg1, uint256 arg2, uint256 arg3)
#  - vote(bytes32 arg1, uint256 arg2, uint256 arg3, address arg4)
#  - stakeWithSignature(bytes32 arg1, uint256 arg2, uint256 arg3, uint256 arg4, uint256 arg5, bytes arg6)
#  - propose(uint256 arg1, bytes32 arg2, address arg3, address arg4)
#  - executeBoosted(bytes32 arg1)
#  - redeem(bytes32 arg1, address arg2)
#  - execute(bytes32 arg1)
#
const getAllowedRangeOfChoices = 1, 2

const isAbstainAllow = 0

const NO = 2

const DELEGATION_HASH_EIP712 = sha3(Mask(240, 16, 'address GenesisProtocolAddress') >> 16, Mask(144, 112, 'bytes32 ProposalId') >> 112, Mask(96, 160, 'uint256 Vote') >> 160, Mask(168, 88, 'uint256 AmountToStake') >> 88, Mask(104, 152, 'uint256 Nonce') >> 152)

const NUM_OF_CHOICES = 2

const YES = 1


mapping of struct stor0;
mapping of struct voteInfo;
mapping of uint256 orgBoostedProposalsCnt;
mapping of address organizations;
mapping of uint256 averagesDownstakesOfBoosted;
uint256 proposalsCnt;
uint32 stor6;
address stakingTokenAddress;
mapping of uint256 stakesNonce;

function voteInfo(bytes32 arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    return voteInfo[arg1][17][address(arg2)].field_0, voteInfo[arg1][17][address(arg2)].field_256
}

function getStaker(bytes32 arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    return voteInfo[arg1][19][address(arg2)].field_0, voteInfo[arg1][19][address(arg2)].field_256
}

function getProposalOrganization(bytes32 arg1) payable {
    require calldata.size - 4 >= 32
    return voteInfo[arg1].field_0
}

function proposalsCnt() payable {
    return proposalsCnt
}

function proposals(bytes32 arg1) payable {
    require calldata.size - 4 >= 32
    require voteInfo[arg1].field_416 <= 6
    return voteInfo[arg1].field_0, 
           voteInfo[arg1].field_256,
           voteInfo[arg1].field_256,
           voteInfo[arg1].field_512,
           voteInfo[arg1].field_768,
           voteInfo[arg1].field_1024,
           voteInfo[arg1].field_1280,
           voteInfo[arg1].field_1536,
           voteInfo[arg1].field_1792,
           voteInfo[arg1].field_2048,
           voteInfo[arg1].field_2304,
           voteInfo[arg1].field_2560,
           bool(voteInfo[arg1].field_3584)
}

function winningVote(bytes32 arg1) payable {
    require calldata.size - 4 >= 32
    return voteInfo[arg1].field_512
}

function state(bytes32 arg1) payable {
    require calldata.size - 4 >= 32
    require voteInfo[arg1].field_416 <= 6
    return voteInfo[arg1].field_416
}

function voteStake(bytes32 arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    return voteInfo[arg1][18][arg2].field_0
}

function stakingToken() payable {
    return address(stakingTokenAddress)
}

function proposalStatus(bytes32 arg1) payable {
    require calldata.size - 4 >= 32
    return voteInfo[arg1][16][1].field_0, 
           voteInfo[arg1][16][2].field_0,
           voteInfo[arg1][18][1].field_0,
           voteInfo[arg1][18][2].field_0
}

function stakesNonce(address arg1) payable {
    require calldata.size - 4 >= 32
    return stakesNonce[arg1]
}

function voteStatus(bytes32 arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    return voteInfo[arg1][15][arg2].field_0
}

function organizations(bytes32 arg1) payable {
    require calldata.size - 4 >= 32
    return organizations[arg1]
}

function averagesDownstakesOfBoosted(bytes32 arg1) payable {
    require calldata.size - 4 >= 32
    return averagesDownstakesOfBoosted[arg1]
}

function orgBoostedProposalsCnt(bytes32 arg1) payable {
    require calldata.size - 4 >= 32
    return orgBoostedProposalsCnt[arg1]
}

function _fallback() payable {
    revert
}

function getNumberOfChoices(bytes32 arg1) payable {
    require calldata.size - 4 >= 32
    return 2
}

function score(bytes32 arg1) payable {
    require calldata.size - 4 >= 32
    require voteInfo[arg1][18][2].field_0
    return (voteInfo[arg1][18][1].field_0 << 40 / voteInfo[arg1][18][2].field_0)
}

function getProposalTimes(bytes32 arg1) payable {
    require calldata.size - 4 >= 32
    idx = 192
    s = 11
    while 288 > idx + 32:
        mem[idx + 32] = voteInfo[arg1][s].field_256
        idx = idx + 32
        s = s + 1
        continue 
    return voteInfo[arg1].field_2816, mem[224 len 64]
}

function getParametersHash(uint256[11] arg1, address arg2) payable {
    require calldata.size - 4 >= 384
    return sha3(sha3(call.data[4], call.data[36], call.data[68], call.data[100], call.data[132], call.data[164], call.data[196], call.data[228], call.data[260], call.data[292], call.data[324]), address(cd[356]))
}

function cancelVote(bytes32 arg1) payable {
    require calldata.size - 4 >= 32
    require voteInfo[arg1].field_416 <= 6
    if voteInfo[arg1].field_416 != 4:
        require voteInfo[arg1].field_416 <= 6
        if voteInfo[arg1].field_416 != 5:
            require voteInfo[arg1].field_416 <= 6
            if voteInfo[arg1].field_416 != 6:
                require voteInfo[arg1].field_416 <= 6
                require voteInfo[arg1].field_416 == 3
}

function isVotable(bytes32 arg1) payable {
    require calldata.size - 4 >= 32
    require voteInfo[arg1].field_416 <= 6
    if voteInfo[arg1].field_416 == 4:
        return True
    require voteInfo[arg1].field_416 <= 6
    if voteInfo[arg1].field_416 == 5:
        return True
    require voteInfo[arg1].field_416 <= 6
    if voteInfo[arg1].field_416 == 6:
        return True
    require voteInfo[arg1].field_416 <= 6
    return (voteInfo[arg1].field_416 == 3)
}

function parameters(bytes32 arg1) payable {
    require calldata.size - 4 >= 32
    return stor0[arg1].field_0, 
           stor0[arg1].field_256,
           stor0[arg1].field_512,
           stor0[arg1].field_768,
           stor0[arg1].field_1024,
           stor0[arg1].field_1280,
           stor0[arg1].field_1536,
           stor0[arg1].field_1792,
           stor0[arg1].field_2048,
           stor0[arg1].field_2304,
           stor0[arg1].field_2560,
           stor0[arg1].field_2816,
           stor0[arg1].field_3072
}

function threshold(bytes32 arg1, bytes32 arg2) payable {
    require calldata.size - 4 >= 64
    if orgBoostedProposalsCnt[arg2] <= stor0[arg1].field_1280:
        s = 1099511627776
        idx = orgBoostedProposalsCnt[arg2]
        t = stor0[arg1].field_1024
        while idx:
            if bool(idx) != 1:
                if not Mask(255, 1, idx):
                    s = s
                    idx = idx / 2
                    t = t
                    continue 
                require t
                if t * t / t != t:
                    revert with 0, 'RealMath mul overflow'
                s = s
                idx = idx / 2
                t = Mask(216, 40, t * t) >> 40
                continue 
            require s
            if t * s / s != t:
                revert with 0, 'RealMath mul overflow'
            if not Mask(255, 1, idx):
                s = Mask(216, 40, t * s) >> 40
                idx = idx / 2
                t = t
                continue 
            require t
            if t * t / t != t:
                revert with 0, 'RealMath mul overflow'
            s = Mask(216, 40, t * s) >> 40
            idx = idx / 2
            t = Mask(216, 40, t * t) >> 40
            continue 
    else:
        s = 1099511627776
        idx = stor0[arg1].field_1280
        t = stor0[arg1].field_1024
        while idx:
            if bool(idx) != 1:
                if not Mask(255, 1, idx):
                    s = s
                    idx = idx / 2
                    t = t
                    continue 
                require t
                if t * t / t != t:
                    revert with 0, 'RealMath mul overflow'
                s = s
                idx = idx / 2
                t = Mask(216, 40, t * t) >> 40
                continue 
            require s
            if t * s / s != t:
                revert with 0, 'RealMath mul overflow'
            if not Mask(255, 1, idx):
                s = Mask(216, 40, t * s) >> 40
                idx = idx / 2
                t = t
                continue 
            require t
            if t * t / t != t:
                revert with 0, 'RealMath mul overflow'
            s = Mask(216, 40, t * s) >> 40
            idx = idx / 2
            t = Mask(216, 40, t * t) >> 40
            continue 
    return s
}

function shouldBoost(bytes32 arg1) payable {
    require calldata.size - 4 >= 32
    require voteInfo[arg1].field_416 <= 6
    idx = 1152
    s = 11
    while 1248 > idx + 32:
        mem[idx + 32] = voteInfo[arg1][s].field_256
        idx = idx + 32
        s = s + 1
        continue 
    if orgBoostedProposalsCnt[stor1[arg1].field_0] <= stor0[stor1[arg1].field_1280].field_1280:
        s = 1099511627776
        idx = orgBoostedProposalsCnt[stor1[arg1].field_0]
        t = stor0[stor1[arg1].field_1280].field_1024
        while idx:
            if bool(idx) != 1:
                if not Mask(255, 1, idx):
                    s = s
                    idx = idx / 2
                    t = t
                    continue 
                require t
                if t * t / t != t:
                    revert with 0, 'RealMath mul overflow'
                s = s
                idx = idx / 2
                t = Mask(216, 40, t * t) >> 40
                continue 
            require s
            if t * s / s != t:
                revert with 0, 'RealMath mul overflow'
            if not Mask(255, 1, idx):
                s = Mask(216, 40, t * s) >> 40
                idx = idx / 2
                t = t
                continue 
            require t
            if t * t / t != t:
                revert with 0, 'RealMath mul overflow'
            s = Mask(216, 40, t * s) >> 40
            idx = idx / 2
            t = Mask(216, 40, t * t) >> 40
            continue 
    else:
        s = 1099511627776
        idx = stor0[stor1[arg1].field_1280].field_1280
        t = stor0[stor1[arg1].field_1280].field_1024
        while idx:
            if bool(idx) != 1:
                if not Mask(255, 1, idx):
                    s = s
                    idx = idx / 2
                    t = t
                    continue 
                require t
                if t * t / t != t:
                    revert with 0, 'RealMath mul overflow'
                s = s
                idx = idx / 2
                t = Mask(216, 40, t * t) >> 40
                continue 
            require s
            if t * s / s != t:
                revert with 0, 'RealMath mul overflow'
            if not Mask(255, 1, idx):
                s = Mask(216, 40, t * s) >> 40
                idx = idx / 2
                t = t
                continue 
            require t
            if t * t / t != t:
                revert with 0, 'RealMath mul overflow'
            s = Mask(216, 40, t * s) >> 40
            idx = idx / 2
            t = Mask(216, 40, t * t) >> 40
            continue 
    if voteInfo[arg1][18][2].field_0:
        return (voteInfo[arg1][18][1].field_0 << 40 / voteInfo[arg1][18][2].field_0 > s)
    revert
}

function redeemDaoBounty(bytes32 arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    require voteInfo[arg1].field_416 <= 6
    require voteInfo[arg1].field_416 == 2
    if 0 >= voteInfo[arg1][19][address(arg2)].field_512:
        return 0
    if voteInfo[arg1][19][address(arg2)].field_0 != voteInfo[arg1].field_512:
        return 0
    if voteInfo[arg1].field_512 != 1:
        return 0
    if not voteInfo[arg1][18][voteInfo[arg1].field_512].field_0:
        return 0
    require voteInfo[arg1][18][voteInfo[arg1].field_512].field_0
    if not voteInfo[arg1][19][address(arg2)].field_512 * voteInfo[arg1].field_1792 / voteInfo[arg1][18][voteInfo[arg1].field_512].field_0:
        return 0, 
               voteInfo[arg1][19][address(arg2)].field_512 * voteInfo[arg1].field_1792 / voteInfo[arg1][18][voteInfo[arg1].field_512].field_0
    require ext_code.size(voteInfo[arg1].field_256)
    staticcall voteInfo[arg1].field_256.balanceOfStakingToken(address arg1, bytes32 arg2) with:
            gas gas_remaining wei
           args address(stakingTokenAddress), arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] < voteInfo[arg1][19][address(arg2)].field_512 * voteInfo[arg1].field_1792 / voteInfo[arg1][18][voteInfo[arg1].field_512].field_0:
        return 0, 
               voteInfo[arg1][19][address(arg2)].field_512 * voteInfo[arg1].field_1792 / voteInfo[arg1][18][voteInfo[arg1].field_512].field_0
    voteInfo[arg1][19][address(arg2)].field_512 = 0
    require voteInfo[arg1][19][address(arg2)].field_512 * voteInfo[arg1].field_1792 / voteInfo[arg1][18][voteInfo[arg1].field_512].field_0 <= voteInfo[arg1].field_1536
    voteInfo[arg1].field_1536 -= voteInfo[arg1][19][address(arg2)].field_512 * voteInfo[arg1].field_1792 / voteInfo[arg1][18][voteInfo[arg1].field_512].field_0
    require ext_code.size(voteInfo[arg1].field_256)
    call voteInfo[arg1].field_256.stakingTokenTransfer(address arg1, address arg2, uint256 arg3, bytes32 arg4) with:
         gas gas_remaining wei
        args 0, uint32(stor6), address(arg2), voteInfo[arg1][19][address(arg2)].field_512 * voteInfo[arg1].field_1792 / voteInfo[arg1][18][voteInfo[arg1].field_512].field_0, arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0]
    emit RedeemDaoBounty((voteInfo[arg1][19][address(arg2)].field_512 * voteInfo[arg1].field_1792 / voteInfo[arg1][18][voteInfo[arg1].field_512].field_0), arg1, organizations[stor1[arg1].field_0], arg2);
    return voteInfo[arg1][19][address(arg2)].field_512 * voteInfo[arg1].field_1792 / voteInfo[arg1][18][voteInfo[arg1].field_512].field_0, 
           voteInfo[arg1][19][address(arg2)].field_512 * voteInfo[arg1].field_1792 / voteInfo[arg1][18][voteInfo[arg1].field_512].field_0
}

function setParameters(uint256[11] arg1, address arg2) payable {
    require calldata.size - 4 >= 384
    if arg1 > 100:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    41,
                    0x643530203c3d20717565756564566f7465526571756972656450657263656e74616765203c3d203130,
                    mem[205 len 23]
    if arg1 < 50:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    41,
                    0x643530203c3d20717565756564566f7465526571756972656450657263656e74616765203c3d203130,
                    mem[205 len 23]
    if cd[132] > 16000:
        revert with 0, '1000 < thresholdConst <= 16000'
    if cd[132] <= 1000:
        revert with 0, '1000 < thresholdConst <= 16000'
    if cd[228] > 100:
        revert with 0, 'votersReputationLossRatio <= 100'
    if cd[68] < cd[164]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    43,
                    0x65626f6f73746564566f7465506572696f644c696d6974203e3d207175696574456e64696e67506572696f,
                    mem[207 len 21]
    if cd[260] <= 0:
        revert with 0, 'minimumDaoBounty should be > 0'
    if cd[292] <= 0:
        revert with 0, 'daoBountyConst should be > 0'
    idx = 2000
    s = 2
    while idx < 16000:
        if idx >= cd[132]:
            idx = 2 * idx
            s = s + 1
            continue 
        if cd[132] > 2 * idx:
            idx = 2 * idx
            s = s + 1
            continue 
        require s
        stor0[sha3(call.data[4], call.data[36], call.data[68], call.data[100], call.data[132], call.data[164], call.data[196], call.data[228], call.data[260], call.data[292], call.data[324])][address(cd[356])].field_0 = arg1
        stor0[sha3(call.data[4], call.data[36], call.data[68], call.data[100], call.data[132], call.data[164], call.data[196], call.data[228], call.data[260], call.data[292], call.data[324])][address(cd[356])].field_256 = arg2
        stor0[sha3(call.data[4], call.data[36], call.data[68], call.data[100], call.data[132], call.data[164], call.data[196], call.data[228], call.data[260], call.data[292], call.data[324])][address(cd[356])].field_512 = cd[68]
        stor0[sha3(call.data[4], call.data[36], call.data[68], call.data[100], call.data[132], call.data[164], call.data[196], call.data[228], call.data[260], call.data[292], call.data[324])][address(cd[356])].field_768 = cd[100]
        stor0[sha3(call.data[4], call.data[36], call.data[68], call.data[100], call.data[132], call.data[164], call.data[196], call.data[228], call.data[260], call.data[292], call.data[324])][address(cd[356])].field_1024 = cd[132] << 80 / 1099511627776000
        stor0[sha3(call.data[4], call.data[36], call.data[68], call.data[100], call.data[132], call.data[164], call.data[196], call.data[228], call.data[260], call.data[292], call.data[324])][address(cd[356])].field_1280 = 172 / s
        stor0[sha3(call.data[4], call.data[36], call.data[68], call.data[100], call.data[132], call.data[164], call.data[196], call.data[228], call.data[260], call.data[292], call.data[324])][address(cd[356])].field_1536 = cd[164]
        stor0[sha3(call.data[4], call.data[36], call.data[68], call.data[100], call.data[132], call.data[164], call.data[196], call.data[228], call.data[260], call.data[292], call.data[324])][address(cd[356])].field_1792 = cd[196]
        stor0[sha3(call.data[4], call.data[36], call.data[68], call.data[100], call.data[132], call.data[164], call.data[196], call.data[228], call.data[260], call.data[292], call.data[324])][address(cd[356])].field_2048 = cd[228]
        stor0[sha3(call.data[4], call.data[36], call.data[68], call.data[100], call.data[132], call.data[164], call.data[196], call.data[228], call.data[260], call.data[292], call.data[324])][address(cd[356])].field_2304 = cd[260]
        stor0[sha3(call.data[4], call.data[36], call.data[68], call.data[100], call.data[132], call.data[164], call.data[196], call.data[228], call.data[260], call.data[292], call.data[324])][address(cd[356])].field_2560 = cd[292]
        stor0[sha3(call.data[4], call.data[36], call.data[68], call.data[100], call.data[132], call.data[164], call.data[196], call.data[228], call.data[260], call.data[292], call.data[324])][address(cd[356])].field_2816 = cd[324]
        stor0[sha3(call.data[4], call.data[36], call.data[68], call.data[100], call.data[132], call.data[164], call.data[196], call.data[228], call.data[260], call.data[292], call.data[324])][address(cd[356])].field_3072 = address(cd[356])
        return sha3(sha3(call.data[4], call.data[36], call.data[68], call.data[100], call.data[132], call.data[164], call.data[196], call.data[228], call.data[260], call.data[292], call.data[324]), address(cd[356]))
    stor0[sha3(call.data[4], call.data[36], call.data[68], call.data[100], call.data[132], call.data[164], call.data[196], call.data[228], call.data[260], call.data[292], call.data[324])][address(cd[356])].field_0 = arg1
    stor0[sha3(call.data[4], call.data[36], call.data[68], call.data[100], call.data[132], call.data[164], call.data[196], call.data[228], call.data[260], call.data[292], call.data[324])][address(cd[356])].field_256 = arg2
    stor0[sha3(call.data[4], call.data[36], call.data[68], call.data[100], call.data[132], call.data[164], call.data[196], call.data[228], call.data[260], call.data[292], call.data[324])][address(cd[356])].field_512 = cd[68]
    stor0[sha3(call.data[4], call.data[36], call.data[68], call.data[100], call.data[132], call.data[164], call.data[196], call.data[228], call.data[260], call.data[292], call.data[324])][address(cd[356])].field_768 = cd[100]
    stor0[sha3(call.data[4], call.data[36], call.data[68], call.data[100], call.data[132], call.data[164], call.data[196], call.data[228], call.data[260], call.data[292], call.data[324])][address(cd[356])].field_1024 = cd[132] << 80 / 1099511627776000
    stor0[sha3(call.data[4], call.data[36], call.data[68], call.data[100], call.data[132], call.data[164], call.data[196], call.data[228], call.data[260], call.data[292], call.data[324])][address(cd[356])].field_1280 = 172
    stor0[sha3(call.data[4], call.data[36], call.data[68], call.data[100], call.data[132], call.data[164], call.data[196], call.data[228], call.data[260], call.data[292], call.data[324])][address(cd[356])].field_1536 = cd[164]
    stor0[sha3(call.data[4], call.data[36], call.data[68], call.data[100], call.data[132], call.data[164], call.data[196], call.data[228], call.data[260], call.data[292], call.data[324])][address(cd[356])].field_1792 = cd[196]
    stor0[sha3(call.data[4], call.data[36], call.data[68], call.data[100], call.data[132], call.data[164], call.data[196], call.data[228], call.data[260], call.data[292], call.data[324])][address(cd[356])].field_2048 = cd[228]
    stor0[sha3(call.data[4], call.data[36], call.data[68], call.data[100], call.data[132], call.data[164], call.data[196], call.data[228], call.data[260], call.data[292], call.data[324])][address(cd[356])].field_2304 = cd[260]
    stor0[sha3(call.data[4], call.data[36], call.data[68], call.data[100], call.data[132], call.data[164], call.data[196], call.data[228], call.data[260], call.data[292], call.data[324])][address(cd[356])].field_2560 = cd[292]
    stor0[sha3(call.data[4], call.data[36], call.data[68], call.data[100], call.data[132], call.data[164], call.data[196], call.data[228], call.data[260], call.data[292], call.data[324])][address(cd[356])].field_2816 = cd[324]
    stor0[sha3(call.data[4], call.data[36], call.data[68], call.data[100], call.data[132], call.data[164], call.data[196], call.data[228], call.data[260], call.data[292], call.data[324])][address(cd[356])].field_3072 = address(cd[356])
    return sha3(sha3(call.data[4], call.data[36], call.data[68], call.data[100], call.data[132], call.data[164], call.data[196], call.data[228], call.data[260], call.data[292], call.data[324]), address(cd[356]))
}



}
