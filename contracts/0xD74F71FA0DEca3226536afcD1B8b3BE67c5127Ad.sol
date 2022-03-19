contract main {


// =======================  Init code  ======================


uint8 stor0; offset 168
uint256 stor0;

function _fallback() payable {
    uint8(stor0.field_168) = 1
    uint256(stor0.field_0) = msg.sender or Mask(96, 160, uint256(stor0.field_0))
    return code.data[88 len 3140]
}



// =====================  Runtime code  =====================


uint8 sub_c6ab6c4a; offset 160
uint8 alive; offset 168
uint128 stor0; offset 160
address stor0;
mapping of uint8 stor2;

function getVote(uint256 arg1, uint256 arg2) payable {
    require arg1 < videos.length
    require arg2 < uint256(videos[arg1].field_1280)
    require arg1 < videos.length
    require arg2 < uint256(videos[arg1].field_1280)
    return address(stor[(2 * arg2) + sha3((6 * arg1) + ('name', 'videos', 1) + 5)].field_0), 
           uint256(stor[(2 * arg2) + sha3((6 * arg1) + ('name', 'videos', 1) + 5)].field_256)
}

function alive() payable {
    return alive
}

function getVoteCount(uint256 arg1) payable {
    require arg1 < videos.length
    return uint256(videos[arg1].field_1280)
}

function sub_c6ab6c4a(?) payable {
    return sub_c6ab6c4a
}

function videos(uint256 arg1) payable {
    require arg1 < videos.length
    mem[288] = uint256(videos[arg1].field_0)
    idx = 288
    s = 0
    while videos[arg1].length + 288 > idx + 32:
        mem[idx + 32] = uint256(videos[(6 * arg1) + s].field_256)
        idx = idx + 32
        s = s + 1
        continue 
    mem[videos[arg1].length + (floor32(videos[arg1].length - 1) + -videos[arg1].length + 32 % 32) + 288] = stor[(6 * arg1) + ('name', 'videos', 1) + 1].length
    mem[videos[arg1].length + (floor32(videos[arg1].length - 1) + -videos[arg1].length + 32 % 32) + 320] = uint256(stor[sha3((6 * arg1) + ('name', 'videos', 1) + 1)].field_0)
    idx = videos[arg1].length + (floor32(videos[arg1].length - 1) + -videos[arg1].length + 32 % 32) + 320
    s = 0
    while videos[arg1].length + (floor32(videos[arg1].length - 1) + -videos[arg1].length + 32 % 32) + stor[(6 * arg1) + ('name', 'videos', 1) + 1].length + 320 > idx + 32:
        mem[idx + 32] = uint256(stor[s + sha3((6 * arg1) + ('name', 'videos', 1) + 1)].field_256)
        idx = idx + 32
        s = s + 1
        continue 
    return Array(len=videos[arg1].length, data=mem[288 len videos[arg1].length + (floor32(videos[arg1].length - 1) + -videos[arg1].length + 32 % 32) + stor[(6 * arg1) + ('name', 'videos', 1) + 1].length + (floor32(stor[(6 * arg1) + ('name', 'videos', 1) + 1].length - 1) + -stor[(6 * arg1) + ('name', 'videos', 1) + 1].length + 32 % 32) + 32]), 
           videos[arg1].length + (floor32(videos[arg1].length - 1) + -videos[arg1].length + 32 % 32) + 192,
           address(videos[arg1].field_512),
           uint256(videos[arg1].field_768),
           uint8(videos[arg1].field_1024)
}

function kill() payable {
    selfdestruct(address(stor0.field_0))
}

function _fallback() payable {
  stop
}

function sub_555d5f99(?) payable {
  stop
}

function sub_0d6d2b01(?) payable {
    if msg.sender == address(stor0.field_0):
        require arg1 < videos.length
        uint256(videos[arg1].field_1024) = arg2 or Mask(248, 8, uint256(videos[arg1].field_1024))
}

function vote(uint256 arg1) payable {
    require arg1 < videos.length
    uint256(videos[arg1].field_1280)++
    if not uint256(videos[arg1].field_1280) <= uint256(videos[arg1].field_1280) + 1:
        idx = 2 * uint256(videos[arg1].field_1280) + 1
        while 2 * uint256(videos[arg1].field_1280) > idx:
            address(stor[idx + sha3((6 * arg1) + ('name', 'videos', 1) + 5)].field_0) = 0
            uint256(stor[idx + sha3((6 * arg1) + ('name', 'videos', 1) + 5)].field_256) = 0
            idx = idx + 1
            continue 
    uint256(stor[(2 * uint256(videos[arg1].field_1280)) + sha3((6 * arg1) + ('name', 'videos', 1) + 5)].field_0) = msg.sender or Mask(96, 160, uint256(stor[(2 * uint256(videos[arg1].field_1280)) + sha3((6 * arg1) + ('name', 'videos', 1) + 5)].field_0))
    uint256(stor[(2 * uint256(videos[arg1].field_1280)) + sha3((6 * arg1) + ('name', 'videos', 1) + 5)].field_256) = block.timestamp
}

function sub_0dbd9bdc(?) payable {
    if stor2[arg1[all]]:
        return 0
    videos.length++
    if not videos.length <= videos.length + 1:
        mem[0] = 1
        idx = (6 * videos.length) + 6
        while sha3(1) + (6 * videos.length) > idx + sha3(mem[0]):
            uint256(stor[idx + sha3(mem[0])]) = 0
            if 31 < stor[idx + sha3(mem[0])].length:
                s = sha3(idx + sha3(mem[0]))
                while sha3(idx + sha3(mem[0])) + (stor[idx + sha3(mem[0])].length + 31 / 32) > s:
                    uint256(stor[s]) = 0
                    s = s + 1
                    continue 
            uint256(stor[idx + sha3(mem[0]) + 1]) = 0
            if 31 < stor[idx + sha3(mem[0]) + 1].length:
                s = sha3(idx + sha3(mem[0]) + 1)
                while sha3(idx + sha3(mem[0]) + 1) + (stor[idx + sha3(mem[0]) + 1].length + 31 / 32) > s:
                    uint256(stor[s]) = 0
                    s = s + 1
                    continue 
            address(stor[idx + sha3(mem[0]) + 2]) = 0
            uint256(stor[idx + sha3(mem[0]) + 3]) = 0
            uint8(stor[idx + sha3(mem[0]) + 4]) = 0
            uint256(stor[idx + sha3(mem[0]) + 5]) = 0
            mem[0] = idx + sha3(mem[0]) + 5
            s = sha3(idx + sha3(mem[0]) + 5)
            while sha3(idx + sha3(mem[0]) + 5) + (2 * uint256(stor[idx + sha3(mem[0]) + 5])) > s:
                address(stor[s]) = 0
                uint256(videos[s].field_0) = 0
                s = s + 1
                continue 
            idx = idx + 1
            continue 
    require videos.length < videos.length
    uint256(videos[videos.length][].field_0) = Array(len=arg1.length, data=arg1[all])
    uint256(stor[sha3((6 * videos.length) + ('name', 'videos', 1) + 1)][].field_0) = Array(len=arg2.length, data=arg2[all])
    uint256(videos[videos.length].field_512) = msg.sender or Mask(96, 160, uint256(videos[videos.length].field_512))
    uint256(videos[videos.length].field_768) = block.timestamp
    uint8(videos[videos.length].field_1024) = 1
    stor2[arg1[all]] = 1
    Mask(96, 0, stor0.field_160) = Mask(96, 0, sub_c6ab6c4a + 1)
    return sub_c6ab6c4a
}



}
