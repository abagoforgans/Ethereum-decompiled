contract main {


// =======================  Init code  ======================


uint256 stor0;

function _fallback() payable {
    stor0 = msg.sender or Mask(96, 160, stor0)
    return code.data[36 len 1932]
}



// =====================  Runtime code  =====================


address stor0;
mapping of struct tiles;

function tiles(uint256 arg1) {
    mem[256] = tiles[arg1][1].field_0
    idx = 256
    s = 0
    while tiles[arg1][1].length + 256 > idx + 32:
        mem[idx + 32] = tiles[arg1][s + 1].field_256
        idx = idx + 32
        s = s + 1
        continue 
    mem[tiles[arg1][1].length + (floor32(tiles[arg1][1].length - 1) + -tiles[arg1][1].length + 32 % 32) + 256] = tiles[arg1][2].length
    mem[tiles[arg1][1].length + (floor32(tiles[arg1][1].length - 1) + -tiles[arg1][1].length + 32 % 32) + 288] = tiles[arg1][2].field_0
    idx = tiles[arg1][1].length + (floor32(tiles[arg1][1].length - 1) + -tiles[arg1][1].length + 32 % 32) + 288
    s = 0
    while tiles[arg1][1].length + (floor32(tiles[arg1][1].length - 1) + -tiles[arg1][1].length + 32 % 32) + tiles[arg1][2].length + 288 > idx + 32:
        mem[idx + 32] = tiles[arg1][s + 2].field_256
        idx = idx + 32
        s = s + 1
        continue 
    return tiles[arg1].field_0, 
           Array(len=tiles[arg1][1].length, data=mem[256 len tiles[arg1][1].length + (floor32(tiles[arg1][1].length - 1) + -tiles[arg1][1].length + 32 % 32) + tiles[arg1][2].length + (floor32(tiles[arg1][2].length - 1) + -tiles[arg1][2].length + 32 % 32) + 32]),
           tiles[arg1][1].length + (floor32(tiles[arg1][1].length - 1) + -tiles[arg1][1].length + 32 % 32) + 160,
           tiles[arg1].field_768
}

function _fallback() payable {
    revert 
}

function setTile(uint256 arg1, string arg2, string arg3, uint256 arg4) {
    require tiles[arg1].field_0 == msg.sender
    tiles[arg1][1][].field_0 = Array(len=arg2.length, data=arg2[all])
    tiles[arg1][2][].field_0 = Array(len=arg3.length, data=arg3[all])
    tiles[arg1].field_768 = arg4
    emit TileUpdated(arg1);
}

function buyTile(uint256 arg1) payable {
    require arg1 <= 3969
    require tiles[arg1].field_0 != msg.sender
    if not tiles[arg1].field_0:
        require 2 * 10^18 == msg.value
        call stor0 with:
           value 2 * 10^18 wei
             gas 0 wei
    else:
        require tiles[arg1].field_768 != 0
        require tiles[arg1].field_768 == msg.value
        call tiles[arg1].field_0 with:
           value tiles[arg1].field_768 wei
             gas 2300 * is_zero(value) wei
    require ext_call.success
    tiles[arg1].field_0 = msg.sender or Mask(96, 160, tiles[arg1].field_0)
    tiles[arg1].field_768 = 0
    emit TileUpdated(arg1);
}

function getTile(uint256 arg1) {
    mem[96] = 0
    mem[128] = 0
    mem[32] = 1
    mem[160] = tiles[arg1][1].length
    mem[192] = tiles[arg1][1].field_0
    idx = 192
    s = 0
    while tiles[arg1][1].length + 160 > idx:
        mem[idx + 32] = tiles[arg1][s + 1].field_256
        idx = idx + 32
        s = s + 1
        continue 
    mem[64] = ceil32(tiles[arg1][1].length) + ceil32(tiles[arg1][2].length) + 224
    mem[ceil32(tiles[arg1][1].length) + 192] = tiles[arg1][2].length
    mem[0] = sha3(arg1, 1) + 2
    mem[ceil32(tiles[arg1][1].length) + 224] = tiles[arg1][2].field_0
    idx = ceil32(tiles[arg1][1].length) + 224
    s = 0
    while ceil32(tiles[arg1][1].length) + tiles[arg1][2].length + 192 > idx:
        mem[idx + 32] = tiles[arg1][s + 2].field_256
        idx = idx + 32
        s = s + 1
        continue 
    mem[ceil32(tiles[arg1][1].length) + ceil32(tiles[arg1][2].length) + 224] = tiles[arg1].field_0
    mem[ceil32(tiles[arg1][1].length) + ceil32(tiles[arg1][2].length) + 320] = tiles[arg1].field_768
    mem[ceil32(tiles[arg1][1].length) + ceil32(tiles[arg1][2].length) + 256] = 128
    mem[ceil32(tiles[arg1][1].length) + ceil32(tiles[arg1][2].length) + 352] = tiles[arg1][1].length
    mem[ceil32(tiles[arg1][1].length) + ceil32(tiles[arg1][2].length) + 384 len tiles[arg1][1].length] = mem[192 len tiles[arg1][1].length]
    mem[ceil32(tiles[arg1][1].length) + ceil32(tiles[arg1][2].length) + 288] = tiles[arg1][1].length + 160
    mem[tiles[arg1][1].length + ceil32(tiles[arg1][1].length) + ceil32(tiles[arg1][2].length) + 384] = tiles[arg1][2].length
    mem[tiles[arg1][1].length + ceil32(tiles[arg1][1].length) + ceil32(tiles[arg1][2].length) + 416 len tiles[arg1][2].length] = mem[ceil32(tiles[arg1][1].length) + 224 len tiles[arg1][2].length]
    if not tiles[arg1][2].length % 32:
        return tiles[arg1].field_0, 
               Array(len=tiles[arg1][1].length, data=mem[192 len tiles[arg1][1].length], tiles[arg1][2].length, mem[ceil32(tiles[arg1][1].length) + 224 len tiles[arg1][2].length]),
               tiles[arg1][1].length + 160,
               tiles[arg1].field_768
    mem[floor32(tiles[arg1][2].length) + tiles[arg1][1].length + ceil32(tiles[arg1][1].length) + ceil32(tiles[arg1][2].length) + 416] = mem[floor32(tiles[arg1][2].length) + tiles[arg1][1].length + ceil32(tiles[arg1][1].length) + ceil32(tiles[arg1][2].length) + -tiles[arg1][2].length % 32 + 448 len tiles[arg1][2].length % 32]
    return tiles[arg1].field_0, 
           Array(len=tiles[arg1][1].length, data=mem[192 len tiles[arg1][1].length], tiles[arg1][2].length, mem[ceil32(tiles[arg1][1].length) + ceil32(tiles[arg1][2].length) + tiles[arg1][1].length + 416 len floor32(tiles[arg1][2].length) + 32]),
           tiles[arg1][1].length + 160,
           tiles[arg1].field_768
}



}
