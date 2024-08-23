class Solution {
    public int jump(int[] nums) {
        int totaljump = 0;
        int destination = nums.length-1;
        int coverage = 0;
        int lastjumpidx  =0;
        if(nums.length == 1){
            return 0;
        }
        for(int i = 0;i<nums.length ;i++){
            coverage = Math.max(coverage, i+nums[i]);
            if(i == lastjumpidx){
                lastjumpidx = coverage;
                totaljump++;
                if(coverage>=destination){
                    return totaljump;
                }
            }
        }return totaljump;
    }
}
