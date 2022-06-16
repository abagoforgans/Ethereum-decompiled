contract main {




// =====================  Runtime code  =====================


const name = Array(len=33, data=0xfe487574333420446973637265746520496e666f726d6174696f6e205468656f72, mem[161 len 31], mem[223 len 1])

const totalSupply = -1

const decimals = 18

const symbol = 'DIT'


array of uint256 sub_d9dcb089;
array of uint256 sub_f0713d8d;
array of uint256 sub_cdec825a;
array of uint256 sub_9134eda4;

function sub_9134eda4(?) payable {
    return sub_9134eda4[address(arg1)][0 len sub_9134eda4[address(arg1)].length]
}

function sub_cdec825a(?) payable {
    return sub_cdec825a[address(arg1)][0 len sub_cdec825a[address(arg1)].length]
}

function sub_d9dcb089(?) payable {
    return sub_d9dcb089[address(arg1)][0 len sub_d9dcb089[address(arg1)].length]
}

function sub_f0713d8d(?) payable {
    return sub_f0713d8d[address(arg1)][0 len sub_f0713d8d[address(arg1)].length]
}

function _fallback() payable {
    revert
}

function balanceOf(address arg1) payable {
    require calldata.size - 4 >= 32
    return -1
}

function allowance(address arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    return -1
}

function approve(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    emit Approval(arg2, msg.sender, arg1);
    return 1
}

function transfer(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    emit Transfer(arg2, msg.sender, arg1);
    return 1
}

function transferFrom(address arg1, address arg2, uint256 arg3) payable {
    require calldata.size - 4 >= 96
    emit Transfer(arg3, arg1, arg2);
    return 1
}

function sub_2b7e75e6(?) payable {
    require calldata.size - 4 >= 32
    require arg1 <= 4294967296
    require arg1 + 36 <= calldata.size
    require arg1.length <= 4294967296 and arg1 + arg1.length + 36 <= calldata.size
    sub_cdec825a[address(msg.sender)][] = Array(len=arg1.length, data=arg1[all])
}

function sub_9a7282d8(?) payable {
    require calldata.size - 4 >= 32
    require arg1 <= 4294967296
    require arg1 + 36 <= calldata.size
    require arg1.length <= 4294967296 and arg1 + arg1.length + 36 <= calldata.size
    sub_9134eda4[address(msg.sender)][] = Array(len=arg1.length, data=arg1[all])
}

function sub_aa731ce9(?) payable {
    require calldata.size - 4 >= 32
    require arg1 <= 4294967296
    require arg1 + 36 <= calldata.size
    require arg1.length <= 4294967296 and arg1 + arg1.length + 36 <= calldata.size
    sub_d9dcb089[address(msg.sender)][] = Array(len=arg1.length, data=arg1[all])
}

function sub_cbd32034(?) payable {
    require calldata.size - 4 >= 32
    require arg1 <= 4294967296
    require arg1 + 36 <= calldata.size
    require arg1.length <= 4294967296 and arg1 + arg1.length + 36 <= calldata.size
    sub_f0713d8d[address(msg.sender)][] = Array(len=arg1.length, data=arg1[all])
}



}
