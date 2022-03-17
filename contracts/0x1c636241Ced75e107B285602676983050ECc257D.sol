contract main {


// =======================  Init code  ======================


uint256 stor0;
uint256 stor1;

function _fallback() payable {
    stor0 = msg.sender or Mask(96, 160, stor0)
    stor1 = 1
    return code.data[76 len 1322]
}



// =====================  Runtime code  =====================


address adminAddress;
uint256 stor0;
uint256 stor1;

function get_length(uint256 arg1, uint256 arg2) payable {
    require arg1 < stor1
    return stor[arg1 + code.data[1290 len 32]][arg2]
}

function get_entry(uint256 arg1, uint256 arg2, uint256 arg3) payable {
    require arg1 < stor1
    require arg3 < stor[arg1 + code.data[1290 len 32]][arg2]
    return stor[arg1 + code.data[1290 len 32]][arg2][arg3]
}

function admin() payable {
    return address(adminAddress)
}

function _fallback() payable {
  stop
}

function count() payable {
    return (stor1 - 1)
}

function has(uint256 arg1) payable {
    return arg1 <= stor1 - 1
}

function new_entry() payable {
    if address(adminAddress) != msg.sender:
        return 0
    stor1++
    return stor1
}

function transfer_ownership(address arg1) payable {
    if msg.sender == address(adminAddress):
        uint256(stor0) = arg1 or Mask(96, 160, uint256(stor0))
}

function clear(uint256 arg1, uint256 arg2) payable {
    if msg.sender == address(adminAddress):
        require arg1 < stor1
        stor[arg1 + code.data[1290 len 32]][arg2] = 0
        if not stor[arg1 + code.data[1290 len 32]][arg2] <= 0:
            idx = 0
            while stor[arg1 + code.data[1290 len 32]][arg2] > idx:
                stor[arg1 + code.data[1290 len 32]][arg2][idx] = 0
                idx = idx + 1
                continue 
}

function get_all(uint256 arg1, uint256 arg2) payable {
    require arg1 < stor1
    if stor[arg1 + code.data[1290 len 32]][arg2]:
        mem[160] = stor[arg1 + code.data[1290 len 32]][arg2]
        idx = 160
        s = 0
        while (32 * stor[arg1 + code.data[1290 len 32]][arg2]) + 128 > idx:
            mem[idx + 32] = stor[s + ('map', ('param', 'arg2'), ('add', ('param', 'arg1'), ('code.data', 1290, 32))) + 1]
            idx = idx + 32
            s = s + 1
            continue 
    return Array(len=stor[arg1 + code.data[1290 len 32]][arg2], data=mem[160 len 32 * stor[arg1 + code.data[1290 len 32]][arg2]])
}

function add(uint256 arg1, uint256 arg2, uint256 arg3) payable {
    if msg.sender == address(adminAddress):
        require arg1 < stor1
        stor[arg1 + code.data[1290 len 32]][arg2]++
        if not stor[arg1 + code.data[1290 len 32]][arg2] <= stor[arg1 + code.data[1290 len 32]][arg2] + 1:
            idx = stor[arg1 + code.data[1290 len 32]][arg2] + 1
            while stor[arg1 + code.data[1290 len 32]][arg2] > idx:
                stor[arg1 + code.data[1290 len 32]][arg2][idx] = 0
                idx = idx + 1
                continue 
        require stor[arg1 + code.data[1290 len 32]][arg2] < stor[arg1 + code.data[1290 len 32]][arg2]
        stor[arg1 + code.data[1290 len 32]][arg2][stor[arg1 + code.data[1290 len 32]][arg2]] = arg3
}

function delete_entry(uint256 arg1, uint256 arg2, uint256 arg3) payable {
    if msg.sender == address(adminAddress):
        require arg1 < stor1
        idx = arg3
        while idx + 1 < stor[arg1 + code.data[1290 len 32]][arg2]:
            mem[0] = sha3(arg2, arg1 + code.data[1290 len 32])
            require idx < stor[arg1 + code.data[1290 len 32]][arg2]
            stor[arg1 + code.data[1290 len 32]][arg2][idx] = stor[idx + ('map', ('param', 'arg2'), ('add', ('param', 'arg1'), ('code.data', 1290, 32))) + 1]
            idx = idx + 1
            continue 
        stor[arg1 + code.data[1290 len 32]][arg2]--
        if not stor[arg1 + code.data[1290 len 32]][arg2] <= stor[arg1 + code.data[1290 len 32]][arg2] - 1:
            idx = stor[arg1 + code.data[1290 len 32]][arg2] - 1
            while stor[arg1 + code.data[1290 len 32]][arg2] > idx:
                stor[arg1 + code.data[1290 len 32]][arg2][idx] = 0
                idx = idx + 1
                continue 
}



}
