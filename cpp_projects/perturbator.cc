// WORK IN PROGRESS //

#include <iostream>

using namespace std;

double a;
double b;
double c;

BinaryPerturbator() {
	for(double dummy_i; dummy_i<10; dummy_i++){
		if (passing){
			
		}
		for(double dummy_j; dummy_j<10; dummy_j++){
			for(dummy_k; dummy_k<10; dummy_k++){
				
			}
		}
	}
}


while (true){
	double high;
	double low; // for each variable
	// get state at i_init(passing or no)
	dummy_i=
	if (state.different) {
		flip=dummy_i;
		
	}
}

///////////////////////////////////////
bool nominal_passing; // look for pass or fail?
double high;
double low;
double right;
double min_step_size;

bool current_state_a(); // need to define these
bool current_state_b();
bool current_state_c();

bool current_state(double current_position);


// Takes the current position in the search, current state, and whether or not we need to increase or decrease cur pose
// and then reassigns cur pose and the new range of the search.
//HAVE TO USE RECURSION!
void binary_iterator(double cur_pos, bool current_state, bool increase){
	if ((current_state == nominal_passing && increase) || (current_state != nominal_passing && !increase)){
		low = cur_pose; // set the new low to the current position if we're going right
	    cur_pos = (high - low)/2;
	}
	if ((current_state == nominal_passing && !increase) || (current_state != nominal_passing && increase)){
		high = cur_pos; // set the new high
	    cur_pose = (high - low)/2;
	}
	if ((high - low) < min_step_size){
		// assign results here and break the function
	} else {
		binary_iterator(cur_pose, current_state, increase);
	}
};


	




//////////////////////////////////////

int main(){
	return;
}