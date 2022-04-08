contract main {


// =======================  Init code  ======================


uint256 stor0;
address stor2;
array of address stor3;
mapping of uint256 stor257;
uint8 stor260; offset 168
address stor260;
address stor261;
uint256 stor262;
uint256 stor263;

function _fallback() payable {
    address(stor260.field_0) = this.address
    uint8(stor260.field_168) = 1
    stor261 = this.address
    stor262 = 21000000 * 10^18
    stor263 = 96153846153846153846153
    require not msg.value
    mem[96 len -6251] = code.data[6682 len -6251]
    mem[64] = -6155
    stor2 = msg.sender
    stor257[address(msg.sender)] = 1
    idx = 0
    while idx < mem[mem[96] + 96]:
        require idx < mem[mem[96] + 96]
        require idx + 2 < 256
        stor3[idx] = mem[mem[96] + (32 * idx) + 140 len 20]
        require idx < mem[mem[96] + 96]
        mem[0] = mem[mem[96] + (32 * idx) + 140 len 20]
        mem[32] = 257
        stor257[mem[mem[96] + (32 * idx) + 140 len 20]] = idx + 2
        idx = idx + 1
        continue 
    require stor0 <= 256
    stor0 = mem[128]
    return code.data[431 len 6251]
}



// =====================  Runtime code  =====================


uint256 required;
array of address owner;
mapping of uint256 stor257;
mapping of struct stor258;
array of uint256 stor259;
uint8 stopped; offset 160
uint8 stoppable; offset 168
address numeraiAddress;
uint256 supply_cap;
uint256 weekly_disbursement;
uint256 initial_disbursement;
uint256 deploy_time;
uint256 total_minted;
uint256 totalSupply;
mapping of uint256 balanceOf;
mapping of uint256 allowance;
mapping of struct tournaments;

function totalSupply() {
    return totalSupply
}

function numerai() {
    return numeraiAddress
}

function balanceOf(address arg1) {
    return balanceOf[arg1]
}

function tournaments(uint256 arg1) {
    return tournaments[arg1].field_0
}

function stopped() {
    return bool(stopped)
}

function initial_disbursement() {
    return initial_disbursement
}

function weekly_disbursement() {
    return weekly_disbursement
}

function deploy_time() {
    return deploy_time
}

function stoppable() {
    return bool(stoppable)
}

function total_minted() {
    return total_minted
}

function getOwner(uint256 arg1) {
    require arg1 + 1 < 256
    return owner[arg1]
}

function required() {
    return required
}

function allowance(address arg1, address arg2) {
    return allowance[arg1][arg2]
}

function supply_cap() {
    return supply_cap
}

function _fallback() payable {
  stop
}

function isOwner(address arg1) {
    return (stor257[address(arg1)] > 0)
}

function emergencyStop() {
    if stor257[address(msg.sender)] > 0:
        require stoppable
        stopped = 1
}

function createTournament(uint256 arg1) {
    require not tournaments[arg1].field_0
    tournaments[arg1].field_0 = block.timestamp
    emit TournamentCreated(arg1);
    return 1
}

function hasConfirmed(bytes32 arg1, address arg2) {
    if stor257[address(arg2)]:
        return stor258[arg1].field_256 and 2^stor257[address(arg2)] != 0
    else:
        return 0
}

function revoke(bytes32 arg1) {
    if stor257[address(msg.sender)]:
        if 2^stor257[address(msg.sender)] and stor258[arg1].field_256 > 0:
            stor258[arg1].field_0++
            stor258[arg1].field_256 -= 2^stor257[address(msg.sender)]
            emit Revoke(msg.sender, arg1);
}

function withdraw(address arg1, address arg2, uint256 arg3) {
    if stor257[address(msg.sender)] <= 0:
        return 0
    require arg1 <= 10^6
    require balanceOf[address(arg1)] >= arg3
    require arg3 <= balanceOf[address(arg1)]
    require balanceOf[address(arg1)] - arg3 <= balanceOf[address(arg1)]
    balanceOf[address(arg1)] -= arg3
    require arg3 + balanceOf[arg2] >= balanceOf[arg2]
    require arg3 + balanceOf[arg2] >= arg3
    balanceOf[address(arg2)] = arg3 + balanceOf[arg2]
    emit Transfer(arg3, arg1, arg2);
    return 1
}

function createRound(uint256 arg1, uint256 arg2, uint256 arg3, uint256 arg4) {
    require arg3 <= arg4
    require tournaments[arg1].field_0 > 0
    require not tournaments[arg1][2][arg2].field_0
    tournaments[arg1].field_256++
    if not tournaments[arg1].field_256 <= tournaments[arg1].field_256 + 1:
        idx = tournaments[arg1].field_256 + 1
        while tournaments[arg1].field_256 > idx:
            tournaments[arg1][idx + 1].field_0 = 0
            idx = idx + 1
            continue 
    stor[tournaments[arg1].field_256 + ('array', 1, ('map', ('param', 'arg1'), ('name', 'tournaments', 270)))].field_0 = arg2
    tournaments[arg1][2][arg2].field_0 = block.timestamp
    tournaments[arg1][2][arg2].field_256 = arg3
    tournaments[arg1][2][arg2].field_512 = arg4
    emit RoundCreated(arg3, arg4, arg1, arg2);
    return 1
}

function destroyStake(address arg1, bytes32 arg2, uint256 arg3, uint256 arg4) {
    if stor257[address(msg.sender)] <= 0:
        return 0
    if stopped:
        return 0
    require tournaments[arg3][2][arg4][3][address(arg1)][arg2].field_0 > 0
    require not tournaments[arg3][2][arg4][3][address(arg1)][arg2].field_264
    require tournaments[arg3][2][arg4].field_512 <= block.timestamp
    tournaments[arg3][2][arg4][3][address(arg1)][arg2].field_0 = 0
    require tournaments[arg3][2][arg4][3][address(arg1)][arg2].field_0 <= totalSupply
    require totalSupply - tournaments[arg3][2][arg4][3][address(arg1)][arg2].field_0 <= totalSupply
    totalSupply -= tournaments[arg3][2][arg4][3][address(arg1)][arg2].field_0
    tournaments[arg3][2][arg4][3][address(arg1)][arg2].field_256 = 0
    tournaments[arg3][2][arg4][3][address(arg1)][arg2].field_264 = 1
    tournaments[arg3][2][arg4][3][address(arg1)][arg2].field_264 = 0
    emit StakeDestroyed(arg2, arg3, arg4, arg1);
    return 1
}

function disableStopping() {
    if stor257[address(msg.sender)]:
        if not stor258[call.data[0 len calldata.size]].field_0:
            stor258[call.data[0 len calldata.size]].field_0 = required
            stor258[call.data[0 len calldata.size]].field_256 = 0
            stor259.length++
            if not stor259.length <= stor259.length + 1:
                idx = stor259.length + 1
                while stor259.length > idx:
                    stor259[idx] = 0
                    idx = idx + 1
                    continue 
            stor258[call.data[0 len calldata.size]].field_512 = stor259.length
            require stor259.length < stor259.length
            stor259[stor259.length] = sha3(call.data[0 len calldata.size])
        if 0 == stor258[call.data[0 len calldata.size]].field_256 and 2^stor257[address(msg.sender)]:
            emit Confirmation(msg.sender, sha3(call.data[0 len calldata.size]));
            if stor258[call.data[0 len calldata.size]].field_0 > 1:
                stor258[call.data[0 len calldata.size]].field_0--
                stor258[call.data[0 len calldata.size]].field_256 = 2^stor257[address(msg.sender)] or stor258[call.data[0 len calldata.size]].field_256
            else:
                require stor258[call.data[0 len calldata.size]].field_512 < stor259.length
                stor259[stor258[call.data[0 len calldata.size]].field_512] = 0
                stor258[call.data[0 len calldata.size]].field_0 = 0
                stor258[call.data[0 len calldata.size]].field_256 = 0
                stor258[call.data[0 len calldata.size]].field_512 = 0
                stoppable = 0
}

function mint(uint256 arg1) {
    if stor257[address(msg.sender)] <= 0:
        return 0
    require arg1 + total_minted >= total_minted
    require arg1 + total_minted >= arg1
    require arg1 + total_minted <= supply_cap
    require deploy_time <= block.timestamp
    require block.timestamp - deploy_time <= block.timestamp
    if weekly_disbursement:
        require weekly_disbursement
        require (block.timestamp * weekly_disbursement) - (deploy_time * weekly_disbursement) / weekly_disbursement == block.timestamp - deploy_time
    require ((block.timestamp * weekly_disbursement) - (deploy_time * weekly_disbursement) / 168 * 24 * 3600) + initial_disbursement >= initial_disbursement
    require ((block.timestamp * weekly_disbursement) - (deploy_time * weekly_disbursement) / 168 * 24 * 3600) + initial_disbursement >= (block.timestamp * weekly_disbursement) - (deploy_time * weekly_disbursement) / 168 * 24 * 3600
    require total_minted <= ((block.timestamp * weekly_disbursement) - (deploy_time * weekly_disbursement) / 168 * 24 * 3600) + initial_disbursement
    require -total_minted <= 0
    require arg1 <= ((block.timestamp * weekly_disbursement) - (deploy_time * weekly_disbursement) / 168 * 24 * 3600) + initial_disbursement - total_minted
    require arg1 + balanceOf[stor261] >= balanceOf[stor261]
    require arg1 + balanceOf[stor261] >= arg1
    balanceOf[stor261] += arg1
    require arg1 + totalSupply >= totalSupply
    require arg1 + totalSupply >= arg1
    totalSupply += arg1
    require arg1 + total_minted >= total_minted
    require arg1 + total_minted >= arg1
    total_minted += arg1
    emit Mint(arg1);
    return 1
}

function release() {
    if stor257[address(msg.sender)]:
        if not stor258[call.data[0 len calldata.size]].field_0:
            stor258[call.data[0 len calldata.size]].field_0 = required
            stor258[call.data[0 len calldata.size]].field_256 = 0
            stor259.length++
            if not stor259.length <= stor259.length + 1:
                idx = stor259.length + 1
                while stor259.length > idx:
                    stor259[idx] = 0
                    idx = idx + 1
                    continue 
            stor258[call.data[0 len calldata.size]].field_512 = stor259.length
            require stor259.length < stor259.length
            stor259[stor259.length] = sha3(call.data[0 len calldata.size])
        if 0 == stor258[call.data[0 len calldata.size]].field_256 and 2^stor257[address(msg.sender)]:
            emit Confirmation(msg.sender, sha3(call.data[0 len calldata.size]));
            if stor258[call.data[0 len calldata.size]].field_0 > 1:
                stor258[call.data[0 len calldata.size]].field_0--
                stor258[call.data[0 len calldata.size]].field_256 = 2^stor257[address(msg.sender)] or stor258[call.data[0 len calldata.size]].field_256
            else:
                require stor258[call.data[0 len calldata.size]].field_512 < stor259.length
                stor259[stor258[call.data[0 len calldata.size]].field_512] = 0
                stor258[call.data[0 len calldata.size]].field_0 = 0
                stor258[call.data[0 len calldata.size]].field_256 = 0
                stor258[call.data[0 len calldata.size]].field_512 = 0
                require stoppable
                stopped = 0
}

function stake(uint256 arg1, bytes32 arg2, uint256 arg3, uint256 arg4, uint256 arg5) {
    if stopped:
        return 0
    require stor257[address(msg.sender)] <= 0
    require numeraiAddress != msg.sender
    require balanceOf[address(msg.sender)] >= arg1
    require tournaments[arg3].field_0 > 0
    require tournaments[arg3][2][arg4].field_0 > 0
    require tournaments[arg3][2][arg4].field_256 > block.timestamp
    if arg1 <= 0:
        require tournaments[arg3][2][arg4][3][address(msg.sender)][arg2].field_0 > 0
    if tournaments[arg3][2][arg4][3][address(msg.sender)][arg2].field_128:
        require tournaments[arg3][2][arg4][3][address(msg.sender)][arg2].field_128 <= arg5
    require arg1 + tournaments[arg3][2][arg4][3][address(msg.sender)][arg2].field_0 >= tournaments[arg3][2][arg4][3][address(msg.sender)][arg2].field_0
    require arg1 + tournaments[arg3][2][arg4][3][address(msg.sender)][arg2].field_0 >= arg1
    require arg1 + tournaments[arg3][2][arg4][3][address(msg.sender)][arg2].field_0 < 0x100000000000000000000000000000000
    tournaments[arg3][2][arg4][3][address(msg.sender)][arg2].field_0 = uint128(arg1 + tournaments[arg3][2][arg4][3][address(msg.sender)][arg2].field_0)
    require arg5 < 0x100000000000000000000000000000000
    tournaments[arg3][2][arg4][3][address(msg.sender)][arg2].field_128 = uint128(arg5)
    require arg1 <= balanceOf[address(msg.sender)]
    require balanceOf[address(msg.sender)] - arg1 <= balanceOf[address(msg.sender)]
    balanceOf[address(msg.sender)] -= arg1
    emit Staked(arg2, tournaments[arg3][2][arg4][3][address(msg.sender)][arg2].field_0, tournaments[arg3][2][arg4][3][address(msg.sender)][arg2].field_128, msg.sender, arg3, arg4);
    return 1
}

function releaseStake(address arg1, bytes32 arg2, uint256 arg3, uint256 arg4, uint256 arg5, bool arg6) {
    if stor257[address(msg.sender)] > 0:
        if not stopped:
            require tournaments[arg4][2][arg5][3][address(arg1)][arg2].field_0 > 0
            require not tournaments[arg4][2][arg5][3][address(arg1)][arg2].field_264
            require tournaments[arg4][2][arg5].field_512 <= block.timestamp
            tournaments[arg4][2][arg5][3][address(arg1)][arg2].field_0 = 0
            require tournaments[arg4][2][arg5][3][address(arg1)][arg2].field_0 + balanceOf[address(arg1)] >= balanceOf[address(arg1)]
            require tournaments[arg4][2][arg5][3][address(arg1)][arg2].field_0 + balanceOf[address(arg1)] >= tournaments[arg4][2][arg5][3][address(arg1)][arg2].field_0
            balanceOf[address(arg1)] += tournaments[arg4][2][arg5][3][address(arg1)][arg2].field_0
            tournaments[arg4][2][arg5][3][address(arg1)][arg2].field_256 = uint8(arg6)
            tournaments[arg4][2][arg5][3][address(arg1)][arg2].field_264 = 0
            tournaments[arg4][2][arg5][3][address(arg1)][arg2].field_264 = 1
            if arg3 <= 0:
                emit StakeReleased(arg2, arg3, arg4, arg5, arg1);
                return 1
            call arg1 with:
               value arg3 wei
                 gas 2300 * is_zero(value) wei
            if ext_call.success:
                emit StakeReleased(arg2, arg3, arg4, arg5, arg1);
                return 1
            balanceOf[address(arg1)] -= tournaments[arg4][2][arg5][3][address(arg1)][arg2].field_0
            tournaments[arg4][2][arg5][3][address(arg1)][arg2].field_256 = 0
            return 0
        else:
            return 0
    else:
        return 0
}

function stakeOnBehalf(address arg1, uint256 arg2, bytes32 arg3, uint256 arg4, uint256 arg5, uint256 arg6) {
    if stor257[address(msg.sender)] <= 0:
        return 0
    if stopped:
        return 0
    require arg1 <= 10^6
    if stopped:
        return 0
    require stor257[address(arg1)] <= 0
    require numeraiAddress != arg1
    require balanceOf[address(arg1)] >= arg2
    require tournaments[arg4].field_0 > 0
    require tournaments[arg4][2][arg5].field_0 > 0
    require tournaments[arg4][2][arg5].field_256 > block.timestamp
    if arg2 <= 0:
        require tournaments[arg4][2][arg5][3][address(arg1)][arg3].field_0 > 0
    if tournaments[arg4][2][arg5][3][address(arg1)][arg3].field_128:
        require tournaments[arg4][2][arg5][3][address(arg1)][arg3].field_128 <= arg6
    require arg2 + tournaments[arg4][2][arg5][3][address(arg1)][arg3].field_0 >= tournaments[arg4][2][arg5][3][address(arg1)][arg3].field_0
    require arg2 + tournaments[arg4][2][arg5][3][address(arg1)][arg3].field_0 >= arg2
    require arg2 + tournaments[arg4][2][arg5][3][address(arg1)][arg3].field_0 < 0x100000000000000000000000000000000
    tournaments[arg4][2][arg5][3][address(arg1)][arg3].field_0 = uint128(arg2 + tournaments[arg4][2][arg5][3][address(arg1)][arg3].field_0)
    require arg6 < 0x100000000000000000000000000000000
    tournaments[arg4][2][arg5][3][address(arg1)][arg3].field_128 = uint128(arg6)
    require arg2 <= balanceOf[address(arg1)]
    require balanceOf[address(arg1)] - arg2 <= balanceOf[address(arg1)]
    balanceOf[address(arg1)] -= arg2
    emit Staked(arg3, tournaments[arg4][2][arg5][3][address(arg1)][arg3].field_0, tournaments[arg4][2][arg5][3][address(arg1)][arg3].field_128, arg1, arg4, arg5);
    return 1
}

function numeraiTransfer(address arg1, uint256 arg2) {
    if not stor257[address(msg.sender)]:
        return 0
    if not stor258[call.data[0 len calldata.size]].field_0:
        stor258[call.data[0 len calldata.size]].field_0 = required
        stor258[call.data[0 len calldata.size]].field_256 = 0
        stor259.length++
        if not stor259.length <= stor259.length + 1:
            idx = stor259.length + 1
            while stor259.length > idx:
                stor259[idx] = 0
                idx = idx + 1
                continue 
        stor258[call.data[0 len calldata.size]].field_512 = stor259.length
        require stor259.length < stor259.length
        stor259[stor259.length] = sha3(call.data[0 len calldata.size])
    if stor258[call.data[0 len calldata.size]].field_256 and 2^stor257[address(msg.sender)] != 0:
        return 0
    emit Confirmation(msg.sender, sha3(call.data[0 len calldata.size]));
    if stor258[call.data[0 len calldata.size]].field_0 > 1:
        stor258[call.data[0 len calldata.size]].field_0--
        stor258[call.data[0 len calldata.size]].field_256 = 2^stor257[address(msg.sender)] or stor258[call.data[0 len calldata.size]].field_256
        return 0
    require stor258[call.data[0 len calldata.size]].field_512 < stor259.length
    stor259[stor258[call.data[0 len calldata.size]].field_512] = 0
    stor258[call.data[0 len calldata.size]].field_0 = 0
    stor258[call.data[0 len calldata.size]].field_256 = 0
    stor258[call.data[0 len calldata.size]].field_512 = 0
    require balanceOf[stor261] >= arg2
    require arg2 <= balanceOf[stor261]
    require balanceOf[stor261] - arg2 <= balanceOf[stor261]
    balanceOf[stor261] -= arg2
    require arg2 + balanceOf[arg1] >= balanceOf[arg1]
    require arg2 + balanceOf[arg1] >= arg2
    balanceOf[address(arg1)] = arg2 + balanceOf[arg1]
    emit Transfer(arg2, numeraiAddress, arg1);
    return 1
}

function getMintable() {
    require deploy_time <= block.timestamp
    require block.timestamp - deploy_time <= block.timestamp
    if not weekly_disbursement:
        if ((block.timestamp * weekly_disbursement) - (deploy_time * weekly_disbursement) / 168 * 24 * 3600) + initial_disbursement >= initial_disbursement:
            if ((block.timestamp * weekly_disbursement) - (deploy_time * weekly_disbursement) / 168 * 24 * 3600) + initial_disbursement >= (block.timestamp * weekly_disbursement) - (deploy_time * weekly_disbursement) / 168 * 24 * 3600:
                if total_minted <= ((block.timestamp * weekly_disbursement) - (deploy_time * weekly_disbursement) / 168 * 24 * 3600) + initial_disbursement:
                    if -total_minted <= 0:
                        return (((block.timestamp * weekly_disbursement) - (deploy_time * weekly_disbursement) / 168 * 24 * 3600) + initial_disbursement - total_minted)
    else:
        if weekly_disbursement:
            if (block.timestamp * weekly_disbursement) - (deploy_time * weekly_disbursement) / weekly_disbursement == block.timestamp - deploy_time:
                if ((block.timestamp * weekly_disbursement) - (deploy_time * weekly_disbursement) / 168 * 24 * 3600) + initial_disbursement >= initial_disbursement:
                    if ((block.timestamp * weekly_disbursement) - (deploy_time * weekly_disbursement) / 168 * 24 * 3600) + initial_disbursement >= (block.timestamp * weekly_disbursement) - (deploy_time * weekly_disbursement) / 168 * 24 * 3600:
                        if total_minted <= ((block.timestamp * weekly_disbursement) - (deploy_time * weekly_disbursement) / 168 * 24 * 3600) + initial_disbursement:
                            if -total_minted <= 0:
                                return (((block.timestamp * weekly_disbursement) - (deploy_time * weekly_disbursement) / 168 * 24 * 3600) + initial_disbursement - total_minted)
    revert
}

function changeShareable(address[] arg1, uint256 arg2) {
    mem[128 len 32 * arg1.length] = call.data[arg1 + 36 len 32 * arg1.length]
    mem[(32 * arg1.length) + 128 len calldata.size] = call.data[0 len calldata.size]
    if stor257[address(msg.sender)]:
        if not stor258[call.data[0 len calldata.size]].field_0:
            stor258[call.data[0 len calldata.size]].field_0 = required
            stor258[call.data[0 len calldata.size]].field_256 = 0
            stor259.length++
            if not stor259.length <= stor259.length + 1:
                idx = stor259.length + 1
                while stor259.length > idx:
                    stor259[idx] = 0
                    idx = idx + 1
                    continue 
            stor258[call.data[0 len calldata.size]].field_512 = stor259.length
            require stor259.length < stor259.length
            stor259[stor259.length] = sha3(call.data[0 len calldata.size])
        if 0 == stor258[call.data[0 len calldata.size]].field_256 and 2^stor257[address(msg.sender)]:
            mem[(32 * arg1.length) + 128] = msg.sender
            emit Confirmation(msg.sender, sha3(call.data[0 len calldata.size]));
            if stor258[call.data[0 len calldata.size]].field_0 > 1:
                stor258[call.data[0 len calldata.size]].field_0--
                stor258[call.data[0 len calldata.size]].field_256 = 2^stor257[address(msg.sender)] or stor258[call.data[0 len calldata.size]].field_256
            else:
                require stor258[call.data[0 len calldata.size]].field_512 < stor259.length
                stor259[stor258[call.data[0 len calldata.size]].field_512] = 0
                stor258[call.data[0 len calldata.size]].field_0 = 0
                stor258[call.data[0 len calldata.size]].field_256 = 0
                stor258[call.data[0 len calldata.size]].field_512 = 0
                idx = 0
                while idx < arg1.length:
                    require idx < arg1.length
                    require idx + 1 < 256
                    owner[idx] = mem[(32 * idx) + 140 len 20]
                    require idx < arg1.length
                    mem[0] = mem[(32 * idx) + 140 len 20]
                    mem[32] = 257
                    stor257[mem[(32 * idx) + 140 len 20]] = idx + 1
                    idx = idx + 1
                    continue 
                require required <= 256
                required = arg2
}



}
