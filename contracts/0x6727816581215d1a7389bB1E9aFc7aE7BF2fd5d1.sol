contract main {




// =====================  Runtime code  =====================


const name = 'Huobi Airdrop HuobiAirdrop.com'

const decimals = 18

const sub_37d6c0d0(?) = 0

const sub_39ffc25c(?) = 0

const sub_58ee3e42(?) = 0

const balanceOf(address arg1) = 100 * 10^18

const sub_806ec916(?) = 0

const symbol = 'HuobiAirdrop.com'

const sub_ce9f16c6(?) = 0

const sub_e70e0aca(?) = 0


mapping of uint256 stor0;
mapping of uint256 allowance;
uint256 totalSupply;

function totalSupply() {
    return totalSupply
}

function allowance(address arg1, address arg2) {
    return allowance[address(arg1)][address(arg2)]
}

function _fallback() payable {
    revert
}

function sub_8335005a(?) {
    emit 0x71ddf252: arg3, arg1, arg2
    return 0
}

function sub_6948bc35(?) {
    emit 0x71ddf252: arg2, this.address, arg1
    return 0
}

function approve(address arg1, uint256 arg2) {
    allowance[msg.sender][address(arg1)] = arg2
    emit Approval(arg2, msg.sender, arg1);
    return 1
}

function transfer(address arg1, uint256 arg2) {
    if arg2 > stor0[msg.sender]:
        return 0
    if stor0[address(arg1)] + arg2 < stor0[address(arg1)]:
        return 0
    stor0[msg.sender] -= arg2
    stor0[arg1] += arg2
    emit 0x71ddf252: arg2, msg.sender, arg1
    return 1
}

function sendFromContract(address arg1, uint256 arg2) {
    if arg2 > stor0[this.address]:
        return 0
    if stor0[address(arg1)] + arg2 < stor0[address(arg1)]:
        return 0
    stor0[this.address] -= arg2
    stor0[arg1] += arg2
    emit 0x71ddf252: arg2, this.address, arg1
    return 1
}

function transferFrom(address arg1, address arg2, uint256 arg3) {
    if arg3 > stor0[address(arg1)]:
        return 0
    if allowance[address(arg1)][msg.sender] < arg3:
        return 0
    if stor0[address(arg2)] + arg3 < stor0[address(arg2)]:
        return 0
    stor0[address(arg2)] += arg3
    stor0[arg1] -= arg3
    if allowance[address(arg1)][msg.sender] < -1:
        allowance[address(arg1)][msg.sender] -= arg3
    emit 0x71ddf252: arg3, arg1, arg2
    return 1
}

function sub_c47c8204(?) {
    emit 0x71ddf252: arg2, this.address, arg1
    emit 0x71ddf252: arg2, this.address, arg1
    emit 0x71ddf252: arg2, this.address, arg1
    emit 0x71ddf252: arg2, this.address, arg1
    emit 0x71ddf252: arg2, this.address, arg1
    emit 0x71ddf252: arg2, this.address, arg1
    emit 0x71ddf252: arg2, this.address, arg1
    emit 0x71ddf252: arg2, this.address, arg1
    emit 0x71ddf252: arg2, this.address, arg1
    emit 0x71ddf252: arg2, this.address, arg1
    return 0
}

function sub_d4b0b577(?) {
    emit 0x71ddf252: arg11, this.address, arg1
    emit 0x71ddf252: arg11, this.address, arg2
    emit 0x71ddf252: arg11, this.address, arg3
    emit 0x71ddf252: arg11, this.address, arg4
    emit 0x71ddf252: arg11, this.address, arg5
    emit 0x71ddf252: arg11, this.address, arg6
    emit 0x71ddf252: arg11, this.address, arg7
    emit 0x71ddf252: arg11, this.address, arg8
    emit 0x71ddf252: arg11, this.address, arg9
    emit 0x71ddf252: arg11, this.address, arg10
    return 0
}



}
