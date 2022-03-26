contract main {


// =======================  Init code  ======================


uint256 stor0;
uint256 stor1;
uint256 stor4;
uint256 stor5;
mapping of uint256 stor7;
mapping of uint256 stor8;
uint256 stor18;

function _fallback() payable {
    mem[96 len -3958] = code.data[4183 len -3958]
    mem[64] = -3862
    stor1 = 0
    stor18 = 0
    stor5 = mem[128]
    idx = 0
    while idx < mem[mem[160] + 96]:
        require idx < mem[mem[160] + 96]
        stor8[idx + 1] = mem[mem[160] + (32 * idx) + 128]
        require idx < mem[mem[160] + 96]
        mem[0] = mem[mem[160] + (32 * idx) + 140 len 20]
        mem[32] = 7
        stor7[mem[mem[160] + (32 * idx) + 140 len 20]] = idx + 1
        idx = idx + 1
        continue 
    stor4 = mem[mem[160] + 96]
    stor0 = mem[192]
    return code.data[225 len 3958]
}



// =====================  Runtime code  =====================


#
#  - deleteContract(uint256 arg1, uint8[] arg2, bytes32[] arg3, bytes32[] arg4)
#  - updateOwners(uint256 arg1, address arg2, address[] arg3, uint256 arg4, uint8[] arg5, bytes32[] arg6, bytes32[] arg7)
#  - reconcile(uint256 arg1, address[] arg2, int256[] arg3, uint8[] arg4, bytes32[] arg5, bytes32[] arg6)
#  - sweep(uint256 arg1, address arg2, uint256 arg3, uint8[] arg4, bytes32[] arg5, bytes32[] arg6)
#  - transfer(uint256 arg1, address arg2, address[] arg3, uint256[] arg4, uint8[] arg5, bytes32[] arg6, bytes32[] arg7)
#
const allowance(address arg1, address arg2) = 0


uint256 stor4;
mapping of uint256 stor7;
mapping of address stor8;
mapping of uint256 balanceOf;
uint256 totalSupply;

function totalSupply() {
    return totalSupply
}

function balanceOf(address arg1) {
    return balanceOf[address(arg1)]
}

function _fallback() {
    revert 
}

function topUp() payable {
    emit TopUp(msg.value, msg.sender);
}

function isOwner(address arg1) {
    return (stor7[address(arg1)] > 0)
}

function deposit(address arg1) payable {
    balanceOf[address(arg1)] += msg.value
    totalSupply += msg.value
    emit Deposit(msg.value, msg.sender, arg1);
    return 1
}

function getOwners() {
    idx = 0
    while idx < stor4:
        mem[0] = idx + 1
        mem[32] = 8
        require idx < stor4
        mem[(32 * idx) + 192] = stor8[idx + 1]
        idx = idx + 1
        continue 
    return Array(len=stor4, data=mem[192 len 32 * stor4])
}



}
