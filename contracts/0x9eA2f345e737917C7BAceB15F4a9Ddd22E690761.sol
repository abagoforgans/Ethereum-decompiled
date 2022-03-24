contract main {


// =======================  Init code  ======================


uint256 stor0;
array of uint256 stor1;
uint256 stor2;
uint256 stor3;
uint256 stor2701;
uint256 stor60B9;
uint256 storA633;

function _fallback() payable {
    stor2 = 0
    stor3 = 0
    stor0 = 1
    if not stor0 <= 1:
        mem[0] = 0
        idx = 4
        while sha3(0) + (4 * stor0) > idx + sha3(mem[0]):
            stor[idx + sha3(mem[0])] = 0
            stor[idx + sha3(mem[0]) + 1] = 0
            mem[0] = idx + sha3(mem[0]) + 1
            s = sha3(s + sha3(mem[0]) + 1)
            while sha3(s + sha3(mem[0]) + 1) + stor[s + sha3(mem[0]) + 1] > s + sha3(mem[0]):
                stor[s + sha3(mem[0])] = 0
                s = s + 1
                continue 
            s = s + 4
            continue 
    require 0 < stor0
    stor[code.data[1708 len 32]] = 1001
    stor[code.data[1740 len 32]] = 1
    if not stor[code.data[1740 len 32]] <= 1:
        idx = 1
        while stor[code.data[1740 len 32]] > idx:
            stor[idx + sha3(code.data[1740 len 32])] = 0
            idx = idx + 1
            continue 
    require 0 < stor0
    require 0 < stor[code.data[1740 len 32]]
    stor[sha3(code.data[1740 len 32])] = 9001
    require 0 < stor0
    stor[code.data[1708 len 32] + 2][0] = stor[sha3(code.data[1740 len 32])]
    stor[code.data[1708 len 32] + 3][0] = stor1[code.data[1708 len 32]]
    if not stor1[code.data[1708 len 32]]:
        idx = 0
        while stor[code.data[1708 len 32] + 3][0] > idx:
            stor[code.data[1708 len 32] + 3][0][idx] = 0
            idx = idx + 1
            continue 
    else:
        s = 0
        idx = 0
        while stor1[code.data[1708 len 32]] > idx:
            stor[code.data[1708 len 32] + 3][0][s] = stor[idx + sha3(code.data[1708 len 32] + 1)]
            s = s + 1
            idx = idx + 1
            continue 
        idx = stor1[code.data[1708 len 32]]
        while stor[code.data[1708 len 32] + 3][0] > idx:
            stor[code.data[1708 len 32] + 3][0][idx] = 0
            idx = idx + 1
            continue 
    stor[sha3(code.data[1740 len 32])] = 8001
    require 0 < stor0
    stor2 = storA633
    require 0 < stor60B9
    stor3 = stor2701
    return code.data[789 len 919]
}



// =====================  Runtime code  =====================


array of uint256 sub_4ce62093;
uint256 stor1;
uint256 sub_f8694f54;
uint256 sub_2918eb6f;
uint256 stor2701;
uint256 stor290D;
mapping of uint256 stor18569430475105882587588266137607568536673111973893317399460219858819262702949;
uint256 stor60B9;
uint256 stor6C13;

function sub_2918eb6f(?) payable {
    return sub_2918eb6f
}

function sub_4ce62093(?) payable {
    require arg1 < sub_4ce62093.length
    return sub_4ce62093[arg1]
}

function sub_f8694f54(?) payable {
    return sub_f8694f54
}

function _fallback() payable {
  stop
}

function f2() payable {
    require 0 < sub_4ce62093.length
    require 0 < stor290D
    stor6C13 = stor1
    stor1 = 7001
    require 0 < sub_4ce62093.length
    sub_f8694f54 = stor290D[0]
    require 0 < stor60B9
    sub_2918eb6f = stor2701
}

function f1() payable {
    require 0 < sub_4ce62093.length
    require 0 < stor290D
    stor1 = stor6C13
    stor1 = 7001
    require 0 < sub_4ce62093.length
    sub_f8694f54 = stor290D[0]
    require 0 < stor60B9
    sub_2918eb6f = stor2701
}



}
