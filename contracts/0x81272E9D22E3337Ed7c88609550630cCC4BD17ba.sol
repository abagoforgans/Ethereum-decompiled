contract main {




// =====================  Runtime code  =====================


array of struct nomParticipant;
array of uint256 messageSpecial;

function messageSpecial() {
    return messageSpecial[0 len messageSpecial.length]
}

function nomParticipant(uint256 arg1) {
    return nomParticipant[arg1][0 len nomParticipant[arg1].length].field_0
}

function profilParticipant(uint256 arg1) {
    return stor[(2 * arg1) + ('name', 'nomParticipant', 0) + 1][0 len stor[(2 * arg1) + ('name', 'nomParticipant', 0) + 1].length].field_0
}

function _fallback() payable {
    revert
}

function participants(uint256 arg1) {
    require arg1 < nomParticipant.length
    mem[96] = nomParticipant[arg1].length
    mem[128] = nomParticipant[arg1].field_0
    idx = 128
    s = 0
    while nomParticipant[arg1].length + 96 > idx:
        mem[idx + 32] = nomParticipant[(2 * arg1) + s].field_256
        idx = idx + 32
        s = s + 1
        continue 
    mem[64] = ceil32(nomParticipant[arg1].length) + ceil32(stor[(2 * arg1) + ('name', 'nomParticipant', 0) + 1].length) + 160
    mem[ceil32(nomParticipant[arg1].length) + 128] = stor[(2 * arg1) + ('name', 'nomParticipant', 0) + 1].length
    mem[0] = (2 * arg1) + sha3(0) + 1
    mem[ceil32(nomParticipant[arg1].length) + 160] = stor[sha3((2 * arg1) + ('name', 'nomParticipant', 0) + 1)].field_0
    idx = ceil32(nomParticipant[arg1].length) + 160
    s = 0
    while ceil32(nomParticipant[arg1].length) + stor[(2 * arg1) + ('name', 'nomParticipant', 0) + 1].length + 128 > idx:
        mem[idx + 32] = stor[s + sha3((2 * arg1) + ('name', 'nomParticipant', 0) + 1)].field_256
        idx = idx + 32
        s = s + 1
        continue 
    mem[ceil32(nomParticipant[arg1].length) + ceil32(stor[(2 * arg1) + ('name', 'nomParticipant', 0) + 1].length) + 160] = 64
    mem[ceil32(nomParticipant[arg1].length) + ceil32(stor[(2 * arg1) + ('name', 'nomParticipant', 0) + 1].length) + 224] = nomParticipant[arg1].length
    mem[ceil32(nomParticipant[arg1].length) + ceil32(stor[(2 * arg1) + ('name', 'nomParticipant', 0) + 1].length) + 256 len ceil32(nomParticipant[arg1].length)] = mem[128 len ceil32(nomParticipant[arg1].length)]
    mem[ceil32(nomParticipant[arg1].length) + ceil32(stor[(2 * arg1) + ('name', 'nomParticipant', 0) + 1].length) + 192] = nomParticipant[arg1].length + 96
    mem[nomParticipant[arg1].length + ceil32(nomParticipant[arg1].length) + ceil32(stor[(2 * arg1) + ('name', 'nomParticipant', 0) + 1].length) + 256] = stor[(2 * arg1) + ('name', 'nomParticipant', 0) + 1].length
    mem[nomParticipant[arg1].length + ceil32(nomParticipant[arg1].length) + ceil32(stor[(2 * arg1) + ('name', 'nomParticipant', 0) + 1].length) + 288 len ceil32(stor[(2 * arg1) + ('name', 'nomParticipant', 0) + 1].length)] = mem[ceil32(nomParticipant[arg1].length) + 160 len ceil32(stor[(2 * arg1) + ('name', 'nomParticipant', 0) + 1].length)]
    if not stor[(2 * arg1) + ('name', 'nomParticipant', 0) + 1].length % 32:
        return Array(len=nomParticipant[arg1].length, data=mem[128 len ceil32(nomParticipant[arg1].length)], mem[(2 * ceil32(nomParticipant[arg1].length)) + ceil32(stor[(2 * arg1) + ('name', 'nomParticipant', 0) + 1].length) + 256 len stor[(2 * arg1) + ('name', 'nomParticipant', 0) + 1].length + nomParticipant[arg1].length + -ceil32(nomParticipant[arg1].length) + 32]), 
               nomParticipant[arg1].length + 96
    mem[floor32(stor[(2 * arg1) + ('name', 'nomParticipant', 0) + 1].length) + nomParticipant[arg1].length + ceil32(nomParticipant[arg1].length) + ceil32(stor[(2 * arg1) + ('name', 'nomParticipant', 0) + 1].length) + 288] = mem[floor32(stor[(2 * arg1) + ('name', 'nomParticipant', 0) + 1].length) + nomParticipant[arg1].length + ceil32(nomParticipant[arg1].length) + ceil32(stor[(2 * arg1) + ('name', 'nomParticipant', 0) + 1].length) + -stor[(2 * arg1) + ('name', 'nomParticipant', 0) + 1].length % 32 + 320 len stor[(2 * arg1) + ('name', 'nomParticipant', 0) + 1].length % 32]
    return Array(len=nomParticipant[arg1].length, data=mem[128 len ceil32(nomParticipant[arg1].length)], mem[(2 * ceil32(nomParticipant[arg1].length)) + ceil32(stor[(2 * arg1) + ('name', 'nomParticipant', 0) + 1].length) + 256 len floor32(stor[(2 * arg1) + ('name', 'nomParticipant', 0) + 1].length) + nomParticipant[arg1].length + -ceil32(nomParticipant[arg1].length) + 64]), 
           nomParticipant[arg1].length + 96
}



}
