contract main {


// =======================  Init code  ======================


uint256 stor0;

function _fallback() payable {
    stor0 = msg.sender or Mask(96, 160, stor0)
    return code.data[36 len 2345]
}



// =====================  Runtime code  =====================


address stor0;
array of uint256 stor1;

function destroy() payable {
    require msg.sender == stor0
    selfdestruct(stor0)
}

function _fallback() payable {
    revert 
}

function getDataRequestLength() payable {
    emit GetDataRequestLength(stor1.length);
}

function getDataRequest(uint256 arg1) payable {
    require arg1 < stor1.length
    mem[256] = uint256(stor[sha3(code.data[2313 len 32] + (3 * arg1) + 1)].field_0)
    idx = 256
    s = 0
    while stor[code.data[2313 len 32] + (3 * arg1) + 1].length + 256 > idx + 32:
        mem[idx + 32] = uint256(stor[s + sha3(code.data[2313 len 32] + (3 * arg1) + 1) + 1].field_0)
        idx = idx + 32
        s = s + 1
        continue 
    emit GetDataRequest(arg1, uint8(stor[code.data[2313 len 32] + (3 * arg1)].field_0), Array(len=stor[code.data[2313 len 32] + (3 * arg1) + 1].length, data=mem[256 len stor[code.data[2313 len 32] + (3 * arg1) + 1].length + (floor32(stor[code.data[2313 len 32] + (3 * arg1) + 1].length - 1) + -stor[code.data[2313 len 32] + (3 * arg1) + 1].length + 32 % 32)]), uint256(stor[code.data[2313 len 32] + (3 * arg1) + 2].field_0));
}

function getDataPoint(uint256 arg1, uint256 arg2) payable {
    require arg1 < stor1.length
    require arg2 < uint256(stor[code.data[2313 len 32] + (3 * arg1) + 2].field_0)
    mem[256] = uint256(stor[sha3((2 * arg2) + sha3(code.data[2313 len 32] + (3 * arg1) + 2) + 1)].field_0)
    idx = 256
    s = 0
    while stor[(2 * arg2) + sha3(code.data[2313 len 32] + (3 * arg1) + 2) + 1].length + 256 > idx + 32:
        mem[idx + 32] = uint256(stor[s + sha3((2 * arg2) + sha3(code.data[2313 len 32] + (3 * arg1) + 2) + 1) + 1].field_0)
        idx = idx + 32
        s = s + 1
        continue 
    emit GetDataPoint(arg1, arg2, uint8(stor[(2 * arg2) + sha3(code.data[2313 len 32] + (3 * arg1) + 2)].field_0), Array(len=stor[(2 * arg2) + sha3(code.data[2313 len 32] + (3 * arg1) + 2) + 1].length, data=mem[256 len stor[(2 * arg2) + sha3(code.data[2313 len 32] + (3 * arg1) + 2) + 1].length + (floor32(stor[(2 * arg2) + sha3(code.data[2313 len 32] + (3 * arg1) + 2) + 1].length - 1) + -stor[(2 * arg2) + sha3(code.data[2313 len 32] + (3 * arg1) + 2) + 1].length + 32 % 32)]));
}

function addDataPoint(uint256 arg1, bool arg2, string arg3) payable {
    require stor0 == msg.sender
    require arg1 < stor1.length
    require uint8(stor[code.data[2313 len 32] + (3 * arg1)].field_0)
    uint256(stor[code.data[2313 len 32] + (3 * arg1) + 2].field_0)++
    if not uint256(stor[code.data[2313 len 32] + (3 * arg1) + 2].field_0) <= uint256(stor[code.data[2313 len 32] + (3 * arg1) + 2].field_0) + 1:
        mem[0] = code.data[2313 len 32] + (3 * arg1) + 2
        idx = 2 * uint256(stor[code.data[2313 len 32] + (3 * arg1) + 2].field_0) + 1
        while sha3(code.data[2313 len 32] + (3 * arg1) + 2) + (2 * uint256(stor[code.data[2313 len 32] + (3 * arg1) + 2].field_0)) > idx + sha3(mem[0]):
            uint16(stor[idx + sha3(mem[0])].field_0) = 0
            uint256(stor[idx + sha3(mem[0]) + 1].field_0) = 0
            if 31 < stor[idx + sha3(mem[0]) + 1].length:
                mem[0] = idx + sha3(mem[0]) + 1
                s = sha3(idx + sha3(mem[0]) + 1)
                while sha3(idx + sha3(mem[0]) + 1) + (stor[idx + sha3(mem[0]) + 1].length + 31 / 32) > s:
                    uint256(stor[s].field_0) = 0
                    s = s + 1
                    continue 
            idx = idx + 1
            continue 
    require uint256(stor[code.data[2313 len 32] + (3 * arg1) + 2].field_0) < uint256(stor[code.data[2313 len 32] + (3 * arg1) + 2].field_0)
    uint8(stor[(2 * uint256(stor[code.data[2313 len 32] + (3 * arg1) + 2].field_0)) + sha3(code.data[2313 len 32] + (3 * arg1) + 2)].field_0) = 1
    Mask(248, 0, stor[(2 * uint256(stor[code.data[2313 len 32] + (3 * arg1) + 2].field_0)) + sha3(code.data[2313 len 32] + (3 * arg1) + 2)].field_8) = Mask(248, 0, arg2)
    stor[(2 * uint256(stor[code.data[2313 len 32] + (3 * arg1) + 2].field_0)) + sha3(code.data[2313 len 32] + (3 * arg1) + 2)].field_256 % 1 = 0
    uint256(stor[sha3((2 * uint256(stor[code.data[2313 len 32] + (3 * arg1) + 2].field_0)) + sha3(code.data[2313 len 32] + (3 * arg1) + 2) + 1)][].field_0) = Array(len=arg3.length, data=arg3[all])
    emit AddDataPoint(arg1, arg2, Array(len=arg3.length, data=arg3[all]));
}

function addDataRequest(string arg1) payable {
    require msg.sender == stor0
    stor1.length++
    if not stor1.length <= stor1.length + 1:
        mem[0] = 1
        idx = (3 * stor1.length) + 3
        while sha3(1) + (3 * stor1.length) > idx + sha3(mem[0]):
            uint8(stor[idx + sha3(mem[0])].field_0) = 0
            uint256(stor[idx + sha3(mem[0]) + 1].field_0) = 0
            if 31 < stor[idx + sha3(mem[0]) + 1].length:
                s = sha3(idx + sha3(mem[0]) + 1)
                while sha3(idx + sha3(mem[0]) + 1) + (stor[idx + sha3(mem[0]) + 1].length + 31 / 32) > s:
                    uint256(stor[s].field_0) = 0
                    s = s + 1
                    continue 
            uint256(stor[idx + sha3(mem[0]) + 2].field_0) = 0
            mem[0] = idx + sha3(mem[0]) + 2
            s = sha3(mem[0])
            while sha3(idx + sha3(mem[0]) + 2) + (2 * uint256(stor[idx + sha3(mem[0]) + 2].field_0)) > s:
                uint16(stor[s].field_0) = 0
                stor1[s] = 0
                if 31 < stor[s + 1].length:
                    mem[0] = s + 1
                    t = sha3(s + 1)
                    while sha3(s + 1) + (stor[s + 1].length + 31 / 32) > t:
                        uint256(stor[t].field_0) = 0
                        t = t + 1
                        continue 
                s = s + 1
                continue 
            idx = idx + 1
            continue 
    require stor1.length < stor1.length
    uint8(stor[(3 * stor1.length) + code.data[2313 len 32]].field_0) = 1
    uint256(stor[sha3((3 * stor1.length) - 0x4ef1d2ad89edf8c4d91132028e8195cdf30bb4b5053d4f8cd260341d4805f309)][].field_0) = Array(len=arg1.length, data=arg1[all])
    mem[ceil32(arg1.length) + 256] = uint256(stor[sha3((3 * stor1.length) + code.data[2313 len 32] + 1)].field_0)
    idx = ceil32(arg1.length) + 256
    s = 0
    while ceil32(arg1.length) + stor[(3 * stor1.length) + code.data[2313 len 32] + 1].length + 256 > idx + 32:
        mem[idx + 32] = uint256(stor[s + sha3((3 * stor1.length) + code.data[2313 len 32] + 1) + 1].field_0)
        idx = idx + 32
        s = s + 1
        continue 
    emit NewDataRequest(stor1.length - 1, uint8(stor[(3 * stor1.length) + code.data[2313 len 32]].field_0), Array(len=stor[(3 * stor1.length) + code.data[2313 len 32] + 1].length, data=mem[ceil32(arg1.length) + 256 len stor[(3 * stor1.length) + code.data[2313 len 32] + 1].length + (floor32(stor[(3 * stor1.length) + code.data[2313 len 32] + 1].length - 1) + -stor[(3 * stor1.length) + code.data[2313 len 32] + 1].length + 32 % 32)]));
}



}
