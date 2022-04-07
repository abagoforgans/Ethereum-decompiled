contract main {


// =======================  Init code  ======================


array of uint256 stor-5442482557903504250613150719145357533886713417884903185095341029921719619869;
mapping of uint256 stor0;
uint256 stor2;
address stor3;
array of uint256 stor4;
array of uint256 stor5;
uint8 stor6;
uint256 stor7;
array of uint256 stor8;
uint256 stor9;
uint16 stor10;
uint256 stor11;
uint256 stor12;
uint8 stor13;
uint256 stor14;
uint256 stor15;
uint256 stor16;
uint256 stor17;
uint256 stor18;
address stor19;
address stor20;

function _fallback() payable {
    stor10 = 0
    stor11 = 10000000 * 10^18
    stor12 = 20000000 * 10^18
    stor13 = 0
    stor14 = 1488 * 24 * 3600
    stor15 = 17520 * 24 * 3600
    stor16 = 25000 * 10^18 * 3600
    stor17 = 30000000 * 10^18
    stor18 = 0
    stor19 = 0
    stor20 = 0
    require not msg.value
    mem[96 len -7631] = code.data[8532 len -7631]
    mem[64] = -7535
    stor3 = msg.sender
    mem[0] = 4
    stor4[] = Array(len=mem[mem[128] + 96], data=mem[mem[128] + 128 len mem[mem[128] + 96]])
    stor5.length = (2 * mem[mem[160] + 96]) + 1
    s = 0
    idx = mem[160] + 128
    while mem[160] + mem[mem[160] + 96] + 128 > idx:
        stor5[s] = mem[idx]
        s = s + 1
        idx = idx + 32
        continue 
    if stor5.length + 31 / 32 > Mask(251, 0, mem[mem[160] + 96] + 31) >> 5:
        stor5[Mask(251, 0, mem[mem[160] + 96] + 31) >> 5] = 0
        idx = (Mask(251, 0, mem[mem[160] + 96] + 31) >> 5) + 1
        while stor5.length + 31 / 32 > idx:
            stor5[idx] = 0
            idx = idx + 1
            continue 
    stor6 = mem[223 len 1]
    stor7 = mem[256]
    stor9 = mem[288]
    stor0[address(msg.sender)] = 10^18 * mem[96]
    stor2 = stor12 + stor11
    stor3 = mem[236 len 20]
    stor8.length = (2 * mem[mem[320] + 96]) + 1
    s = 0xf3f7a9fe364faab93b216da50a3214154f22a0a2b415b23a84c8169e8b636ee3
    idx = mem[320] + 128
    while mem[320] + mem[mem[320] + 96] + 128 > idx:
        stor[s] = mem[idx]
        s = s + 1
        idx = idx + 32
        continue 
    if (stor8.length + 31 / 32) - 0xc085601c9b05546c4de925af5cdebeab0dd5f5d4bea4dc57b37e961749c911d > (Mask(251, 0, mem[mem[320] + 96] + 31) >> 5) - 0xc085601c9b05546c4de925af5cdebeab0dd5f5d4bea4dc57b37e961749c911d:
        stor-5442482557903504250613150719145357533886713417884903185095341029921719619869[Mask(251, 0, mem[mem[320] + 96] + 31) >> 5] = 0
        idx = (Mask(251, 0, mem[mem[320] + 96] + 31) >> 5) - 0xc085601c9b05546c4de925af5cdebeab0dd5f5d4bea4dc57b37e961749c911c
        while (stor8.length + 31 / 32) - 0xc085601c9b05546c4de925af5cdebeab0dd5f5d4bea4dc57b37e961749c911d > idx:
            stor[idx] = 0
            idx = idx + 1
            continue 
    return code.data[901 len 7631]
}



// =====================  Runtime code  =====================


#
#  - _fallback()
#


}
