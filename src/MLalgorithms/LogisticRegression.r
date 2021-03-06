#Copyright 2016 Lingjiao Chen, Arun Kumar, Jeffrey Naughton, and Jignesh M. Patel, Version 0.8.
#All rights reserved.
#
#Licensed under the Apache License, Version 2.0 (the "License");
#you may not use this file except in compliance with the License.
#You may obtain a copy of the License at
#
#    http://www.apache.org/licenses/LICENSE-2.0
#
#Unless required by applicable law or agreed to in writing, software
#distributed under the License is distributed on an "AS IS" BASIS,
#WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
#See the License for the specific language governing permissions and
#limitations under the License.

LogisticRegression <- function(Data,Max_Iter, winit, gamma0, Target )
{
	w = winit;
	for( k in 1: Max_Iter )
	{
		w = w - gamma0 * (t(Data) %*% (Target/(1+exp(Data%*%w))) );
	}
	return(list(w));
}
